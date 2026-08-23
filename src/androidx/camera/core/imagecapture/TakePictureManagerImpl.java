package androidx.camera.core.imagecapture;

import android.util.Log;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
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
    private RequestWithCallback mCapturingRequest;
    final ImageCaptureControl mImageCaptureControl;
    ImagePipeline mImagePipeline;
    private final List mIncompleteRequests;
    final Deque mNewRequests = new ArrayDeque();
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
        Iterator it = this.mNewRequests.iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
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

    void issueNextRequest() {
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
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(this.mNewRequests.poll());
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
