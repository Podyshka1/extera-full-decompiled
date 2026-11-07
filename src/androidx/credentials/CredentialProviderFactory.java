package androidx.credentials;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.credentials.internal.FormFactorHelper;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0000\u0018\u0000 (2\u00020\u0001:\u0001(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0003¢\u0006\u0004\b\t\u0010\bJ'\u0010\r\u001a\u0004\u0018\u00010\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00128\u0007@\u0007X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010 \u001a\u0004\u0018\u00010\u00068\u0007@\u0007X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010\b\"\u0004\b#\u0010$R$\u0010%\u001a\u0004\u0018\u00010\u00068\u0007@\u0007X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010!\u001a\u0004\b&\u0010\b\"\u0004\b'\u0010$¨\u0006)"}, d2 = {"Landroidx/credentials/CredentialProviderFactory;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroidx/credentials/CredentialProvider;", "tryCreateClosedSourceProviderFromManifest", "()Landroidx/credentials/CredentialProvider;", "tryCreatePostUProvider", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "classNames", "instantiatePreUProvider", "(Ljava/util/List;Landroid/content/Context;)Landroidx/credentials/CredentialProvider;", "getAllowedProvidersFromManifest", "(Landroid/content/Context;)Ljava/util/List;", PluginsConstants.REQUEST, _UrlKt.FRAGMENT_ENCODE_SET, "shouldFallbackToPreU", "getBestAvailableProvider", "(Ljava/lang/Object;Z)Landroidx/credentials/CredentialProvider;", "(Z)Landroidx/credentials/CredentialProvider;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "testMode", "Z", "getTestMode", "()Z", "setTestMode", "(Z)V", "testPostUProvider", "Landroidx/credentials/CredentialProvider;", "getTestPostUProvider", "setTestPostUProvider", "(Landroidx/credentials/CredentialProvider;)V", "testPreUProvider", "getTestPreUProvider", "setTestPreUProvider", "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CredentialProviderFactory {
    private final Context context;
    private boolean testMode;
    private CredentialProvider testPostUProvider;
    private CredentialProvider testPreUProvider;

    public CredentialProviderFactory(Context context) {
        this.context = context;
    }

    public static /* synthetic */ CredentialProvider getBestAvailableProvider$default(CredentialProviderFactory credentialProviderFactory, Object obj, boolean z, int i, Object obj2) {
        if ((i & 2) != 0) {
            z = true;
        }
        return credentialProviderFactory.getBestAvailableProvider(obj, z);
    }

    public final CredentialProvider getBestAvailableProvider(Object request, boolean shouldFallbackToPreU) {
        if (Intrinsics.areEqual(request, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        if (request instanceof GetCredentialRequest) {
            for (CredentialOption credentialOption : ((GetCredentialRequest) request).getCredentialOptions()) {
            }
        } else if ((request instanceof CreatePublicKeyCredentialRequest) && ((CreatePublicKeyCredentialRequest) request).getIsConditional()) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        return getBestAvailableProvider(shouldFallbackToPreU);
    }

    public final CredentialProvider getBestAvailableProvider(boolean shouldFallbackToPreU) {
        if (FormFactorHelper.isTV(this.context) || FormFactorHelper.isAuto(this.context)) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            CredentialProvider credentialProviderTryCreatePostUProvider = tryCreatePostUProvider();
            return (credentialProviderTryCreatePostUProvider == null && shouldFallbackToPreU) ? tryCreateClosedSourceProviderFromManifest() : credentialProviderTryCreatePostUProvider;
        }
        if (i <= 33) {
            return tryCreateClosedSourceProviderFromManifest();
        }
        return null;
    }

    private final CredentialProvider tryCreateClosedSourceProviderFromManifest() throws PackageManager.NameNotFoundException {
        if (this.testMode) {
            CredentialProvider credentialProvider = this.testPreUProvider;
            if (credentialProvider != null && credentialProvider.isAvailableOnDevice()) {
                return this.testPreUProvider;
            }
            return null;
        }
        List<String> allowedProvidersFromManifest = getAllowedProvidersFromManifest(this.context);
        if (allowedProvidersFromManifest.isEmpty()) {
            return null;
        }
        return instantiatePreUProvider(allowedProvidersFromManifest, this.context);
    }

    private final CredentialProvider tryCreatePostUProvider() {
        if (this.testMode) {
            CredentialProvider credentialProvider = this.testPostUProvider;
            if (credentialProvider != null && credentialProvider.isAvailableOnDevice()) {
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

    private final CredentialProvider instantiatePreUProvider(List<String> classNames, Context context) {
        Iterator<String> it = classNames.iterator();
        CredentialProvider credentialProvider = null;
        while (it.hasNext()) {
            try {
                CredentialProvider credentialProvider2 = (CredentialProvider) Class.forName(it.next()).getConstructor(Context.class).newInstance(context);
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

    private final List<String> getAllowedProvidersFromManifest(Context context) throws PackageManager.NameNotFoundException {
        String string;
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 132);
        ArrayList arrayList = new ArrayList();
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
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
