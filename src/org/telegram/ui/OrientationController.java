package org.telegram.ui;

import android.app.Activity;
import java.util.ArrayList;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes6.dex */
public final class OrientationController {
    private final Activity activity;
    private final ArrayList<Request> portraitRequests = new ArrayList<>();
    private int baseOrientation = Integer.MIN_VALUE;

    public interface Request {
        void release();
    }

    public OrientationController(Activity activity) {
        this.activity = activity;
    }

    public static OrientationController of(Activity activity) {
        if (activity instanceof LaunchActivity) {
            return ((LaunchActivity) activity).getOrientationController();
        }
        return null;
    }

    public Request requestPortrait() {
        Request request = new Request() { // from class: org.telegram.ui.OrientationController.1
            @Override // org.telegram.ui.OrientationController.Request
            public void release() {
                if (OrientationController.this.portraitRequests.remove(this)) {
                    OrientationController.this.update();
                }
            }
        };
        this.portraitRequests.add(request);
        update();
        return request;
    }

    public void update() {
        try {
            if (!this.portraitRequests.isEmpty() && canFixOrientation()) {
                if (this.baseOrientation == Integer.MIN_VALUE) {
                    this.baseOrientation = this.activity.getRequestedOrientation();
                }
                if (this.activity.getRequestedOrientation() != 1) {
                    this.activity.setRequestedOrientation(1);
                    return;
                }
                return;
            }
            int i = this.baseOrientation;
            if (i != Integer.MIN_VALUE) {
                this.activity.setRequestedOrientation(i);
                this.baseOrientation = Integer.MIN_VALUE;
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private boolean canFixOrientation() {
        if (this.activity.getResources().getConfiguration().smallestScreenWidthDp >= 600) {
            return false;
        }
        return !this.activity.isInMultiWindowMode();
    }
}
