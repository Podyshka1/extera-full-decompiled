package com.google.mlkit.genai.common;

import j$.time.Duration;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class GenAiException extends Exception {
    private final int zza;
    private final Duration zzb;

    public GenAiException(String str, Throwable th, int i) {
        this(str, th, i, Duration.ZERO);
    }

    public int getErrorCode() {
        int i = this.zza;
        if (i == 28) {
            return 9;
        }
        return i;
    }

    public GenAiException(String str, Throwable th, int i, Duration duration) {
        super(str, th);
        this.zza = i;
        this.zzb = duration;
    }

    public GenAiException(Throwable th, int i) {
        this(th, i, Duration.ZERO);
    }

    public GenAiException(Throwable th, int i, Duration duration) {
        String message;
        if (i == -107) {
            message = "Audio buffer overflow. The audio input rate is too fast.";
        } else if (i == 4) {
            message = "Request doesn't pass certain policy check. Please try a different input.";
        } else if (i == 30) {
            message = "Background usage is blocked. Please use the API when your app is in the foreground instead.";
        } else if (i == 501) {
            message = "Not enough storage. Please clear some space.";
        } else if (i == 604) {
            message = "Android version is too low. Please update.";
        } else if (i == 7) {
            message = "The request is canceled.";
        } else if (i == 8) {
            message = "This feature is not available on this device. It is due to either the device not supporting it or the latest configuration file has not been downloaded.";
        } else if (i == 9) {
            message = "Request cannot be processed. Either your app is out of usage quota (try again later) or the request is from disallowed background usage (use the API while the app is in the foreground).";
        } else if (i == 11) {
            message = "Generated response doesn't pass certain policy check. Please try a different input.";
        } else if (i == 12) {
            message = "Request too large. Please shorten your input.";
        } else if (i == 15) {
            message = "Couldn't generate a response due to policy check failure. Please try a different input.";
        } else if (i == 16) {
            message = "This functionality is not implemented nor supported by the inference engine.";
        } else if (i == 27) {
            message = "A long-duration (for example per-day) quota for the calling app's uid has been exceeded. Use of AICore from this app has been restricted to preserve battery.";
        } else if (i != 28) {
            switch (i) {
                case -102:
                    message = "Invalid input image. It can be due to invalid image URL, failure to decode to bitmap, invalid mime type or other image processing failures.";
                    break;
                case -101:
                    message = "AICore is either not installed or the installed version is too low.";
                    break;
                case -100:
                    message = "Request too small. Please provide a longer input.";
                    break;
                default:
                    if (th != null) {
                        message = th.getMessage();
                        if (message == null) {
                            message = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                    } else {
                        message = "Unknown error.";
                    }
                    break;
            }
        } else {
            message = "A long-duration (for example per-day) quota for the device has been exceeded. Use of AICore (from any app) has been restricted to preserve battery.";
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 13 + message.length());
        sb.append("[ErrorCode ");
        sb.append(i);
        sb.append("] ");
        sb.append(message);
        super(sb.toString(), th);
        this.zza = i;
        this.zzb = duration;
    }
}
