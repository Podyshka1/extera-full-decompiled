package androidx.credentials;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.credentials.internal.FormFactorHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialProviderFactory {
    public static final Companion Companion = new Companion(null);
    private final Context context;
    private boolean testMode;
    private CredentialProvider testPostUProvider;
    private CredentialProvider testPreUProvider;

    public CredentialProviderFactory(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static /* synthetic */ CredentialProvider getBestAvailableProvider$default(CredentialProviderFactory credentialProviderFactory, Object obj, boolean z, int i, Object obj2) {
        if ((i & 2) != 0) {
            z = true;
        }
        return credentialProviderFactory.getBestAvailableProvider(obj, z);
    }

    public final CredentialProvider getBestAvailableProvider(Object request, boolean z) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (Intrinsics.areEqual(request, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        if (request instanceof GetCredentialRequest) {
            for (CredentialOption credentialOption : ((GetCredentialRequest) request).getCredentialOptions()) {
            }
        } else if ((request instanceof CreatePublicKeyCredentialRequest) && ((CreatePublicKeyCredentialRequest) request).isConditional()) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        return getBestAvailableProvider(z);
    }

    public final CredentialProvider getBestAvailableProvider(boolean z) {
        if (FormFactorHelper.isTV(this.context) || FormFactorHelper.isAuto(this.context)) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            CredentialProvider credentialProviderTryCreatePostUProvider = tryCreatePostUProvider();
            return (credentialProviderTryCreatePostUProvider == null && z) ? tryCreateClosedSourceProviderFromManifest() : credentialProviderTryCreatePostUProvider;
        }
        if (i <= 33) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        return null;
    }

    private final CredentialProvider tryCreateClosedSourceProviderFromManifest() throws PackageManager.NameNotFoundException {
        if (this.testMode) {
            CredentialProvider credentialProvider = this.testPreUProvider;
            if (credentialProvider == null) {
                return null;
            }
            Intrinsics.checkNotNull(credentialProvider);
            if (credentialProvider.isAvailableOnDevice()) {
                return this.testPreUProvider;
            }
            return null;
        }
        List allowedProvidersFromManifest = getAllowedProvidersFromManifest(this.context);
        if (allowedProvidersFromManifest.isEmpty()) {
            return null;
        }
        return instantiatePreUProvider(allowedProvidersFromManifest, this.context);
    }

    private final CredentialProvider tryCreatePostUProvider() {
        if (this.testMode) {
            CredentialProvider credentialProvider = this.testPostUProvider;
            if (credentialProvider == null) {
                return null;
            }
            Intrinsics.checkNotNull(credentialProvider);
            if (credentialProvider.isAvailableOnDevice()) {
                return this.testPostUProvider;
            }
            return null;
        }
        CredentialProviderFrameworkImpl credentialProviderFrameworkImpl = new CredentialProviderFrameworkImpl(this.context);
        if (credentialProviderFrameworkImpl.isAvailableOnDevice()) {
            return credentialProviderFrameworkImpl;
        }
        return null;
    }

    private final CredentialProvider instantiatePreUProvider(List list, Context context) {
        Iterator it = list.iterator();
        CredentialProvider credentialProvider = null;
        while (it.hasNext()) {
            try {
                Object objNewInstance = Class.forName((String) it.next()).getConstructor(Context.class).newInstance(context);
                Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type androidx.credentials.CredentialProvider");
                CredentialProvider credentialProvider2 = (CredentialProvider) objNewInstance;
                if (!credentialProvider2.isAvailableOnDevice()) {
                    continue;
                } else {
                    if (credentialProvider != null) {
                        Log.i("CredProviderFactory", "Only one active OEM CredentialProvider allowed");
                        return null;
                    }
                    credentialProvider = credentialProvider2;
                }
            } catch (Throwable unused) {
            }
        }
        return credentialProvider;
    }

    private final List getAllowedProvidersFromManifest(Context context) throws PackageManager.NameNotFoundException {
        String string;
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 132);
        ArrayList arrayList = new ArrayList();
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
            Intrinsics.checkNotNull(serviceInfoArr);
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                Bundle bundle = serviceInfo.metaData;
                if (bundle != null && (string = bundle.getString("androidx.credentials.CREDENTIAL_PROVIDER_KEY")) != null) {
                    arrayList.add(string);
                }
            }
        }
        return CollectionsKt.toList(arrayList);
    }
}
