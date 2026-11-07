package androidx.camera.core.impl;

import android.util.Log;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.impl.Observable;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractCameraPresenceSource implements Observable<List<CameraIdentifier>> {
    private List<CameraIdentifier> mCurrentData;
    private final Object mLock = new Object();
    private final List<ObserverWrapper> mObservers = new CopyOnWriteArrayList();
    private Throwable mCurrentError = null;
    private boolean mIsActive = false;

    public abstract void startMonitoring();

    public abstract void stopMonitoring();

    public AbstractCameraPresenceSource(List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(CameraIdentifier.Factory.create(it.next()));
        }
        this.mCurrentData = arrayList;
    }

    public static class ObserverWrapper {
        final Executor mExecutor;
        final Observable.Observer<? super List<CameraIdentifier>> mObserver;

        public ObserverWrapper(Executor executor, Observable.Observer<? super List<CameraIdentifier>> observer) {
            this.mExecutor = executor;
            this.mObserver = observer;
        }
    }

    public void updateData(List<CameraIdentifier> list) {
        updateState(list, null);
    }

    public void updateError(Throwable th) {
        updateState(null, th);
    }

    private void updateState(List<CameraIdentifier> list, Throwable th) {
        boolean z;
        List<CameraIdentifier> listUnmodifiableList;
        Throwable th2;
        synchronized (this.mLock) {
            try {
                if (th != null) {
                    z = this.mCurrentError == null || !this.mCurrentData.isEmpty();
                    this.mCurrentError = th;
                    this.mCurrentData = Collections.EMPTY_LIST;
                } else {
                    Preconditions.checkNotNull(list);
                    boolean z2 = (this.mCurrentError == null && this.mCurrentData.equals(list)) ? false : true;
                    this.mCurrentError = null;
                    this.mCurrentData = list;
                    z = z2;
                }
                listUnmodifiableList = Collections.unmodifiableList(this.mCurrentData);
                th2 = this.mCurrentError;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder("Data changed. Notifying ");
            sb.append(this.mObservers.size());
            sb.append(" observers. Error: ");
            sb.append(th2 != null);
            Log.d("CameraPresenceSrc", sb.toString());
            Iterator<ObserverWrapper> it = this.mObservers.iterator();
            while (it.hasNext()) {
                notifyObserver(it.next(), listUnmodifiableList, th2);
            }
        }
    }

    private void notifyObserver(final ObserverWrapper observerWrapper, final List<CameraIdentifier> list, final Throwable th) {
        observerWrapper.mExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.AbstractCameraPresenceSource$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractCameraPresenceSource.$r8$lambda$DY6WJHcCvKO5lgzk4F3BATyppQM(th, observerWrapper, list);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$DY6WJHcCvKO5lgzk4F3BATyppQM(Throwable th, ObserverWrapper observerWrapper, List list) {
        if (th != null) {
            observerWrapper.mObserver.onError(th);
        } else {
            observerWrapper.mObserver.onNewData(list);
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(Executor executor, Observable.Observer<? super List<CameraIdentifier>> observer) {
        List<CameraIdentifier> listUnmodifiableList;
        Throwable th;
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(observer);
        this.mObservers.add(new ObserverWrapper(executor, observer));
        synchronized (this.mLock) {
            try {
                if (!this.mIsActive && !this.mObservers.isEmpty()) {
                    Log.i("CameraPresenceSrc", "First observer added. Starting monitoring.");
                    this.mIsActive = true;
                    startMonitoring();
                }
                listUnmodifiableList = Collections.unmodifiableList(this.mCurrentData);
                th = this.mCurrentError;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        notifyObserver(new ObserverWrapper(executor, observer), listUnmodifiableList, th);
    }

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(Observable.Observer<? super List<CameraIdentifier>> observer) {
        ObserverWrapper next;
        Preconditions.checkNotNull(observer);
        Iterator<ObserverWrapper> it = this.mObservers.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (next.mObserver.equals(observer)) {
                    break;
                }
            }
        }
        if (next != null) {
            this.mObservers.remove(next);
        }
        synchronized (this.mLock) {
            try {
                if (this.mIsActive && this.mObservers.isEmpty()) {
                    Log.i("CameraPresenceSrc", "Last observer removed. Stopping monitoring.");
                    this.mIsActive = false;
                    stopMonitoring();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
