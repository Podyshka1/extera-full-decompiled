package com.google.android.recaptcha;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes5.dex */
public interface RecaptchaTasksClient {
    Task<String> executeTask(RecaptchaAction recaptchaAction);

    Task<String> executeTask(RecaptchaAction recaptchaAction, long j);
}
