package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.Result;
import kotlin.ResultKt;
import kotlinx.coroutines.CancellableContinuation;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class zznc extends UrlRequest.Callback {
    private final CancellableContinuation zza;
    private final zzaeq zzb = zzaer.zzA();

    public zznc(CancellableContinuation cancellableContinuation) {
        this.zza = cancellableContinuation;
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        urlResponseInfo.getUrl();
        Result.Companion companion = Result.INSTANCE;
        this.zza.resumeWith(Result.m3087constructorimpl(ResultKt.createFailure(cronetException)));
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) throws IOException {
        urlResponseInfo.getUrl();
        byteBuffer.flip();
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        this.zzb.write(bArr);
        byteBuffer.clear();
        urlRequest.read(byteBuffer);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        urlResponseInfo.getUrl();
        urlRequest.followRedirect();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        urlResponseInfo.getUrl();
        urlRequest.read(ByteBuffer.allocateDirect(65536));
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        urlResponseInfo.getUrl();
        this.zza.resumeWith(Result.m3087constructorimpl(new zznb(urlResponseInfo, this.zzb.zza().zzy())));
    }
}
