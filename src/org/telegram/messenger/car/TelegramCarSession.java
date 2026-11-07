package org.telegram.messenger.car;

import android.content.Intent;
import androidx.car.app.Screen;
import androidx.car.app.Session;

/* JADX INFO: loaded from: classes5.dex */
public class TelegramCarSession extends Session {
    @Override // androidx.car.app.Session
    public Screen onCreateScreen(Intent intent) {
        return new HomeScreen(getCarContext());
    }
}
