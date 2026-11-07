package androidx.car.app.managers;

import androidx.car.app.managers.Manager;

/* JADX INFO: loaded from: classes3.dex */
public interface ManagerFactory<T extends Manager> {
    T create();
}
