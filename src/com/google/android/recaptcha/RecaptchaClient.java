package com.google.android.recaptcha;

import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public interface RecaptchaClient {
    /* JADX INFO: renamed from: execute-0E7RQCE, reason: not valid java name */
    Object mo3507execute0E7RQCE(RecaptchaAction recaptchaAction, long j, Continuation<? super Result> continuation);

    /* JADX INFO: renamed from: execute-gIAlu-s, reason: not valid java name */
    Object mo3508executegIAlus(RecaptchaAction recaptchaAction, Continuation<? super Result> continuation);
}
