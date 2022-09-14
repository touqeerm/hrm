<?php

namespace App\Mail;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
class CommonEmailTemplate extends Mailable
{
    use Queueable, SerializesModels;
    public $template;
    public $settings;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($template, $settings)
    {
        $this->template = $template;
        $this->settings = $settings;
    }
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // dd( $this->settings);
        return $this->from($this->settings['company_email_from_name'], $this->template->from)->markdown('email.common_email_template')->subject($this->template->subject)->with('content', $this->template->content);
    }
}