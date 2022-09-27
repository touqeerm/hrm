<?php

namespace App\Console\Commands;
use App\Models\DucumentUpload;
use Illuminate\Notifications\DocumentExpiryReminder;

use Illuminate\Console\Command;

class SendDocumentExpiryReminderCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'document_upload_reminder:send';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send Document Upload Reminders to Users';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $documents = DucumentUpload::where('expiry_date', '<=', now()->toDate())->get();

    foreach ($documents as $document) {
        $document->user->notify(new DocumentExpiryReminder($document));
        //$task->update(['reminder_at' => NULL]);
    }
        return 0;
    }
}
