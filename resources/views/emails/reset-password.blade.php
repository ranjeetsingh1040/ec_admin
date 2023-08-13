
<p>Hello {{ $name }},</p>

<p>We received a request to reset your password for your account. If you did not make this request, you can ignore this email.</p>

<p>Click the link below to reset your password:</p>

{{-- <a href="{{ $resetUrl }}">Reset Password</a> --}}
<p><a href="{{ $url }}auth/reset-password?token={{ $token }}">Reset Password</a></p>

{{-- <p>If the button above doesn't work, copy and paste the following link into your browser:</p>

<p>{{ $resetUrl }}</p> --}}

<p>This link will expire in 60 minutes.</p>

<p>Thanks,</p>
<p>Your App Team</p>




