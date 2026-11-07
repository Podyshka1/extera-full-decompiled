package androidx.car.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import androidx.car.app.IOnRequestPermissionsListener;
import androidx.view.ComponentActivity;
import androidx.view.result.ActivityResultCallback;
import androidx.view.result.contract.ActivityResultContracts$RequestMultiplePermissions;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class CarAppPermissionActivity extends ComponentActivity {
    @Override // androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        maybeSetCustomBackground();
        processInternal(getIntent());
    }

    private void maybeSetCustomBackground() {
        try {
            Bundle bundle = getPackageManager().getApplicationInfo(getPackageName(), 128).metaData;
            int i = bundle != null ? bundle.getInt("androidx.car.app.theme") : 0;
            Context contextCreateConfigurationContext = createConfigurationContext(getResources().getConfiguration());
            if (i != 0) {
                contextCreateConfigurationContext.setTheme(i);
            }
            int identifier = contextCreateConfigurationContext.getResources().getIdentifier("carPermissionActivityLayout", "attr", getPackageName());
            if (identifier == 0) {
                return;
            }
            int resourceId = contextCreateConfigurationContext.getTheme().obtainStyledAttributes(new int[]{identifier}).getResourceId(0, 0);
            if (resourceId == 0) {
                return;
            }
            setContentView(resourceId);
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    private void processInternal(Intent intent) {
        if (intent != null && "androidx.car.app.action.REQUEST_PERMISSIONS".equals(intent.getAction())) {
            requestPermissions(intent);
            return;
        }
        StringBuilder sb = new StringBuilder("Unexpected intent action for CarAppPermissionActivity: ");
        sb.append(intent == null ? "null Intent" : intent.getAction());
        Log.e("CarApp", sb.toString());
        finish();
    }

    private void requestPermissions(Intent intent) {
        Bundle extras = intent.getExtras();
        final IOnRequestPermissionsListener iOnRequestPermissionsListenerAsInterface = IOnRequestPermissionsListener.Stub.asInterface(extras.getBinder("androidx.car.app.action.EXTRA_ON_REQUEST_PERMISSIONS_RESULT_LISTENER_KEY"));
        String[] stringArray = extras.getStringArray("androidx.car.app.action.EXTRA_PERMISSIONS_KEY");
        if (iOnRequestPermissionsListenerAsInterface == null || stringArray == null) {
            Log.e("CarApp", "Intent to request permissions is missing the callback binder");
            finish();
        } else {
            registerForActivityResult(new ActivityResultContracts$RequestMultiplePermissions(), new ActivityResultCallback() { // from class: androidx.car.app.CarAppPermissionActivity$$ExternalSyntheticLambda0
                @Override // androidx.view.result.ActivityResultCallback
                public final void onActivityResult(Object obj) {
                    CarAppPermissionActivity.$r8$lambda$k1ognOoCW2FmgYy8_myqLBJYZBA(this.f$0, iOnRequestPermissionsListenerAsInterface, (Map) obj);
                }
            }).launch(stringArray);
        }
    }

    public static /* synthetic */ void $r8$lambda$k1ognOoCW2FmgYy8_myqLBJYZBA(CarAppPermissionActivity carAppPermissionActivity, IOnRequestPermissionsListener iOnRequestPermissionsListener, Map map) {
        carAppPermissionActivity.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            Boolean bool = (Boolean) entry.getValue();
            if (bool != null && bool.booleanValue()) {
                arrayList.add((String) entry.getKey());
            } else {
                arrayList2.add((String) entry.getKey());
            }
        }
        try {
            iOnRequestPermissionsListener.onRequestPermissionsResult((String[]) arrayList.toArray(new String[0]), (String[]) arrayList2.toArray(new String[0]));
        } catch (RemoteException e) {
            Log.e("CarApp", "CarAppService dead when accepting/rejecting permissions", e);
        }
        carAppPermissionActivity.finish();
    }
}
