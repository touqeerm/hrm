<?php

namespace App\Notifications;
use App\Models\DucumentUpload;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class DocumentExpiryReminder extends Notification
{
    use Queueable;
    private $document;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(DucumentUpload $document)
    {
        $this->document = $document;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {   print($this->document["name"]);
        $name=$this->document["name"];
        $expiry=$this->document["expiry_date"];
        print('_-------');
        return (new MailMessage)
                    ->line("Document : $name")
                    //->greeting(new HtmlString("Document: $name"))
                    ->line("Is Expiring On: $expiry")
                    //->line()
                    //->line('Is Expiring on : {{!!$this->document["expiry_date"]!!}}')
                    //->line()
                    ->line('Kindly Renew it')
                    //->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
