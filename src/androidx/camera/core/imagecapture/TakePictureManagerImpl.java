package androidx.camera.core.imagecapture;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TakePictureManagerImpl implements TakePictureManager, ForwardingImageProxy.OnImageCloseListener {
    final ImageCaptureControl mImageCaptureControl;
    ImagePipeline mImagePipeline;
    private final List<RequestWithCallback> mIncompleteRequests;
    final Deque<TakePictureRequest> mNewRequests = new ArrayDeque();
    boolean mPaused = false;

    public boolean hasCapturingRequest() {
        return false;
    }

    public TakePictureManagerImpl(ImageCaptureControl imageCaptureControl) {
        Threads.checkMainThread();
        this.mImageCaptureControl = imageCaptureControl;
        this.mIncompleteRequests = new ArrayList();
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public void setImagePipeline(ImagePipeline imagePipeline) {
        Threads.checkMainThread();
        this.mImagePipeline = imagePipeline;
        imagePipeline.setOnImageCloseListener(this);
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public void pause() {
        Threads.checkMainThread();
        this.mPaused = true;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public void resume() {
        Threads.checkMainThread();
        this.mPaused = false;
        issueNextRequest();
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager
    public void abortRequests() {
        Threads.checkMainThread();
        ImageCaptureException imageCaptureException = new ImageCaptureException(3, "Camera is closed.", null);
        Iterator<TakePictureRequest> it = this.mNewRequests.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        this.mNewRequests.clear();
        ArrayList arrayList = new ArrayList(this.mIncompleteRequests);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((RequestWithCallback) obj).abortAndSendErrorToApp(imageCaptureException);
        }
    }

    public void issueNextRequest() {
        Threads.checkMainThread();
        Log.d("TakePictureManagerImpl", "Issue the next TakePictureRequest.");
        if (hasCapturingRequest()) {
            Log.d("TakePictureManagerImpl", "There is already a request in-flight.");
            return;
        }
        if (this.mPaused) {
            Log.d("TakePictureManagerImpl", "The class is paused.");
        } else if (this.mImagePipeline.getCapacity() == 0) {
            Log.d("TakePictureManagerImpl", "Too many acquire images. Close image to be able to process next.");
        } else {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.mNewRequests.poll());
            Log.d("TakePictureManagerImpl", "No new request.");
        }
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public void onImageClose(ImageProxy imageProxy) {
        CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.TakePictureManagerImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.issueNextRequest();
            }
        });
    }
}
