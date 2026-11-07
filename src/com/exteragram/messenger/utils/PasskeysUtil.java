package com.exteragram.messenger.utils;

import android.app.Activity;
import android.os.Build;
import androidx.credentials.CredentialManager;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/utils/PasskeysUtil;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Lorg/telegram/ui/Components/BulletinFactory;", PluginsConstants.Settings.FACTORY, "Lorg/telegram/ui/Components/Bulletin;", "showUnsupportedBulletin", "(Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;", _UrlKt.FRAGMENT_ENCODE_SET, "clientDataJSON", _UrlKt.FRAGMENT_ENCODE_SET, "computeClientDataHash", "(Ljava/lang/String;)[B", _UrlKt.FRAGMENT_ENCODE_SET, "get", "challenge", "rpId", "generateClientDataJSONRaw", "(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Landroid/app/Activity;", "activity", _UrlKt.FRAGMENT_ENCODE_SET, "openSettings", "(Landroid/app/Activity;)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class PasskeysUtil {
    public static final PasskeysUtil INSTANCE = new PasskeysUtil();

    private PasskeysUtil() {
    }

    @JvmStatic
    public static final Bulletin showUnsupportedBulletin(BulletinFactory factory) {
        return factory.createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.PasskeyUnsupportedTitle), AndroidUtilities.replaceMultipleTags(LocaleController.getString(C2807R.string.PasskeyUnsupportedMessage), new Runnable() { // from class: com.exteragram.messenger.utils.PasskeysUtil$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(ApplicationLoader.applicationContext, "https://github.com/bitwarden/android");
            }
        }, new Runnable() { // from class: com.exteragram.messenger.utils.PasskeysUtil$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(ApplicationLoader.applicationContext, "https://github.com/Kunzisoft/KeePassDX");
            }
        })).show();
    }

    @JvmStatic
    public static final byte[] computeClientDataHash(String clientDataJSON) {
        return MessageDigest.getInstance("SHA-256").digest(clientDataJSON.getBytes(StandardCharsets.UTF_8));
    }

    @JvmStatic
    public static final String generateClientDataJSONRaw(boolean get, String challenge, String rpId) {
        return new JSONObject().put("type", get ? "webauthn.get" : "webauthn.create").put("challenge", challenge).put("origin", rpId).toString();
    }

    @JvmStatic
    public static final void openSettings(Activity activity) {
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            CredentialManager.INSTANCE.create(activity).createSettingsPendingIntent().send();
            Result.m3608constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3608constructorimpl(ResultKt.createFailure(th));
        }
    }
}
