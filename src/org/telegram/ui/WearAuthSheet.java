package org.telegram.ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.wearable.Wearable;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class WearAuthSheet {
    private static AuthSession currentSession;
    private static BottomSheet currentSheet;
    private static final BigInteger DH_P = new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF", 16);
    private static final BigInteger DH_G = BigInteger.valueOf(2);

    public static class AuthSession {
        List<String> emojis;
        byte[] noncePhone;
        final String originNodeId;
        final byte[] peerPub;
        BigInteger privateExponent;
        final byte[] sessionId;
        byte[] sharedKey;

        public AuthSession(byte[] bArr, byte[] bArr2, String str) {
            this.sessionId = bArr;
            this.peerPub = bArr2;
            this.originNodeId = str;
        }

        public byte[] acceptAndBuildAnswer() {
            SecureRandom secureRandom = new SecureRandom();
            BigInteger bigInteger = new BigInteger(2048, secureRandom);
            BigInteger bigIntegerModPow = WearAuthSheet.DH_G.modPow(bigInteger, WearAuthSheet.DH_P);
            if (!WearAuthSheet.isValidPub(bigIntegerModPow)) {
                Segment$$ExternalSyntheticBUOutline1.m973m("our pubkey invalid (extremely unlikely)");
                return null;
            }
            byte[] bArrEncode256 = WearAuthSheet.encode256(bigIntegerModPow);
            BigInteger bigInteger2 = new BigInteger(1, this.peerPub);
            if (!WearAuthSheet.isValidPub(bigInteger2)) {
                f$$ExternalSyntheticBUOutline1.m215m("peer pubkey out of range");
                return null;
            }
            byte[] bArrEncode2562 = WearAuthSheet.encode256(bigInteger2.modPow(bigInteger, WearAuthSheet.DH_P));
            byte[] bArr = new byte[16];
            secureRandom.nextBytes(bArr);
            byte[] bArrSha256 = WearAuthSheet.sha256(bArrEncode2562, this.sessionId, bArr);
            byte[] bArrSha2562 = WearAuthSheet.sha256(bArrEncode2562, this.peerPub);
            this.privateExponent = bigInteger;
            this.sharedKey = bArrSha256;
            this.noncePhone = bArr;
            this.emojis = WearAuthSheet.emojify(bArrSha2562, 4);
            FileLog.m1037d("wear-auth: built answer; session " + WearAuthSheet.hex(this.sessionId) + " emojis=" + this.emojis);
            byte[] bArr2 = new byte[288];
            System.arraycopy(this.sessionId, 0, bArr2, 0, 16);
            System.arraycopy(bArr, 0, bArr2, 16, 16);
            System.arraycopy(bArrEncode256, 0, bArr2, 32, 256);
            return bArr2;
        }
    }

    public static void onOfferReceived(byte[] bArr, String str) {
        if (bArr == null || bArr.length != 272) {
            StringBuilder sb = new StringBuilder("wear-auth: malformed offer (");
            sb.append(bArr == null ? -1 : bArr.length);
            sb.append(")");
            FileLog.m1037d(sb.toString());
            return;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 16, bArr.length);
        AuthSession authSession = currentSession;
        if (authSession != null && Arrays.equals(authSession.sessionId, bArrCopyOfRange)) {
            FileLog.m1037d("wear-auth: duplicate offer (same sessionId) — ignoring");
            return;
        }
        FileLog.m1037d("wear-auth: new session " + hex(bArrCopyOfRange) + " from " + str);
        currentSession = new AuthSession(bArrCopyOfRange, bArrCopyOfRange2, str);
        show();
    }

    public static void onCancelReceived() {
        FileLog.m1037d("wear-auth: cancel received; dropping session and dismissing sheet");
        currentSession = null;
        cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b2)));
        }
        return sb.toString();
    }

    private static String[] getEmojis() {
        return new String[]{"👋", "👍", "👎", "👌", "👊", "🤟", "🫵", "👏", "🤝", "✍", "💪", "👀", "👅", "🥶", "🤡", "💀", "👽", "😈", "😎", "🤠", "🤩", "😍", "🤯", "🦄", "🐶", "🐷", "🐔", "🐥", "🦊", "🐙", "🐸", "🐳", "🦉", "🦆", "🐢", "🦖", "🐵", "🐝", "🦁", "🐧", "🦋", "🐬", "🦀", "🐌", "🦠", "🐠", "🌵", "💐", "💐", "🎄", "🍄", "🍔", "🍕", "☕", "🍩", "🍪", "🎂", "🍫", "🍭", "🍎", "🥥", "🍒", "🌶", "🥒", "🥦", "🍇", "🍋", "🍓", "🍌", "🍍", "🍆", "🌽", "🍺", "🍷", "🍾", "🍦", "🍰", "🍞", "🍖", "🌭", "🧊", "🍳", "⭐", "☁", "🚀", "🎈", "💎", "💡", "🔑", "❄", "🔎", "👠", "👕", "👗", "👖", "👙", "👜", "👓", "🎀", "💄", "💍", "♠", "❤", "♦", "♣", "🌈", "🌊", "🎃", "👻", "🎁", "🔮", "🎥", "💿", "💻", "📡", "🔉", "⏳", "🔒", "🚗", "🔱", "🔗", "🎲", "🎮", "⚽", "🎳", "🏁", "🏆", "🎸", "💣", "🚽", "🎹", "🎤", "🎨", "🔫", "💊", "💰", "📦", "📅", "📚", "❗", "❓", "💯", "💦", "💤", "🌍", "🏝", "🚂", "🛢", "🛹", "🚢", "✈", "🛎", "🧳", "🌖", "🌞", "🔥", "🏓", "🎰", "🧸", "🪩", "🎭", "👑", "🎩", "🧢", "🔈", "🔋", "🕯", "✏", "💼", "📌", "✂", "🗑", "🛡", "⚙", "🧲", "\u1fa8f", "⚖", "🧪", "🚪", "🫧", "🛒", "🪑", "🗿", "🏁", "🏴\u200d☠", "📊", "🥁", "🎧", "🎵", "🧩", "⛳", "🥇", "🥈", "🥈", "🌪", "⛺", "🧭", "\u1fac6", "🧠", "💋"};
    }

    public static void show() {
        Context context = LaunchActivity.instance;
        if (context == null) {
            context = ApplicationLoader.applicationContext;
        }
        if (context == null) {
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        Theme.ResourcesProvider resourceProvider = safeLastFragment != null ? safeLastFragment.getResourceProvider() : null;
        cancel();
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourceProvider);
        FrameLayout frameLayout = new FrameLayout(context);
        builder.setCustomView(frameLayout);
        int i = UserConfig.selectedAccount;
        final ArrayList arrayList = new ArrayList();
        arrayList.clear();
        for (int i2 = 0; i2 < 16; i2++) {
            if (UserConfig.getInstance(i2).isClientActivated()) {
                if (!ConnectionsManager.getInstance(i2).isTestBackend()) {
                    i = i2;
                }
                arrayList.add(Integer.valueOf(i2));
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return WearAuthSheet.$r8$lambda$buTLqhwFrVAmtPQch46uwC7EpKk((Integer) obj, (Integer) obj2);
            }
        });
        if (arrayList.isEmpty()) {
            return;
        }
        FrameLayout frameLayout2 = new FrameLayout(context);
        final FrameLayout frameLayout3 = new FrameLayout(context);
        frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(14.0f), Theme.getColor(Theme.key_dialogBackgroundGray, resourceProvider)));
        final BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(14.0f));
        backupImageView.getImageReceiver().setCrossfadeWithOldImage(true);
        final AvatarDrawable avatarDrawable = new AvatarDrawable();
        final int[] iArr = {UserConfig.selectedAccount};
        TLRPC.User currentUser = UserConfig.getInstance(iArr[0]).getCurrentUser();
        avatarDrawable.setInfo(currentUser);
        backupImageView.setForUserOrChat(currentUser, avatarDrawable);
        frameLayout3.addView(backupImageView, LayoutHelper.createFrame(28, 28, 115));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogTextGray3, resourceProvider), PorterDuff.Mode.SRC_IN));
        imageView.setImageResource(C2807R.drawable.arrows_select);
        frameLayout3.addView(imageView, LayoutHelper.createFrame(18, 18.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
        frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(52, 28, 17));
        frameLayout2.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(8.0f), 0);
        frameLayout.addView(frameLayout2, LayoutHelper.createLinear(-2, -2, 0.0f, 51, 6, 4, 6, 0));
        ScaleStateListAnimator.apply(frameLayout2);
        if (arrayList.size() <= 1) {
            frameLayout2.setVisibility(8);
        }
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
        BackupImageView backupImageView2 = new BackupImageView(context);
        linearLayout.addView(backupImageView2, LayoutHelper.createLinear(130, 130, 49, 32.0f, 32.0f, 32.0f, 9.66f));
        MediaDataController.getInstance(i).setPlaceholderImage(backupImageView2, "Utya3D", "😎", "130_130");
        int i3 = Theme.key_dialogTextBlack;
        TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i3, true, resourceProvider);
        textViewMakeTextView.setGravity(17);
        textViewMakeTextView.setText(LocaleController.getString(C2807R.string.WearAuthTitle));
        linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 49, 32.0f, 24.0f, 32.0f, 9.66f));
        TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i3, false);
        textViewMakeTextView2.setGravity(17);
        textViewMakeTextView2.setText(LocaleController.getString(C2807R.string.WearAuthText));
        linearLayout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 49, 32, 0, 32, 24));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourceProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.Next));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 12, 12, 12, 8));
        final BottomSheet bottomSheetCreate = builder.create();
        int i4 = Theme.key_windowBackgroundGray;
        bottomSheetCreate.setBackgroundColor(Theme.getColor(i4, resourceProvider));
        bottomSheetCreate.fixNavigationBar(Theme.getColor(i4, resourceProvider));
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WearAuthSheet.$r8$lambda$c_qbh0Jp_OD1nqWPUmrx5EQJ8yg(bottomSheetCreate, frameLayout3, arrayList, iArr, avatarDrawable, backupImageView, view);
            }
        });
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WearAuthSheet.$r8$lambda$B5hgXdvDp8J0vgwWMb33wSz5fCQ(round, iArr, view);
            }
        });
        currentSheet = bottomSheetCreate;
        bottomSheetCreate.show();
    }

    public static /* synthetic */ int $r8$lambda$buTLqhwFrVAmtPQch46uwC7EpKk(Integer num, Integer num2) {
        long j = UserConfig.getInstance(num.intValue()).loginTime;
        long j2 = UserConfig.getInstance(num2.intValue()).loginTime;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    public static /* synthetic */ void $r8$lambda$c_qbh0Jp_OD1nqWPUmrx5EQJ8yg(BottomSheet bottomSheet, FrameLayout frameLayout, ArrayList arrayList, final int[] iArr, final AvatarDrawable avatarDrawable, final BackupImageView backupImageView, View view) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.container, bottomSheet.getResourcesProvider(), frameLayout);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            final int iIntValue = ((Integer) obj).intValue();
            final TLRPC.User currentUser = UserConfig.getInstance(iIntValue).getCurrentUser();
            if (currentUser != null) {
                itemOptionsMakeOptions.addAccount(iIntValue, iArr[0] == iIntValue, new Runnable() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WearAuthSheet.$r8$lambda$OlMawrInXqaCFdhiTyWaQHdJHeI(iArr, iIntValue, avatarDrawable, currentUser, backupImageView);
                    }
                });
            }
        }
        itemOptionsMakeOptions.setDrawScrim(false).setOnTopOfScrim().setDimAlpha(0).setGravity(3).translate(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(8.0f)).show();
    }

    public static /* synthetic */ void $r8$lambda$OlMawrInXqaCFdhiTyWaQHdJHeI(int[] iArr, int i, AvatarDrawable avatarDrawable, TLRPC.User user, BackupImageView backupImageView) {
        iArr[0] = i;
        avatarDrawable.setInfo(user);
        backupImageView.setForUserOrChat(user, avatarDrawable);
    }

    public static /* synthetic */ void $r8$lambda$B5hgXdvDp8J0vgwWMb33wSz5fCQ(final ButtonWithCounterView buttonWithCounterView, final int[] iArr, View view) {
        final AuthSession authSession;
        if (buttonWithCounterView.isLoading() || (authSession = currentSession) == null) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        try {
            Wearable.getMessageClient(view.getContext().getApplicationContext()).sendMessage(authSession.originNodeId, "/tg-wear-auth/answer", authSession.acceptAndBuildAnswer()).addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda5
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    WearAuthSheet.$r8$lambda$sT1lps5_P_spk0l9a6EloZJgcVg(authSession, buttonWithCounterView, iArr, (Integer) obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda6
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    WearAuthSheet.m23639$r8$lambda$XwbqUKYwf0Syqvg0qWMLNf6Tw(buttonWithCounterView, exc);
                }
            });
        } catch (Exception e) {
            FileLog.m1040e(e);
            buttonWithCounterView.setLoading(false);
        }
    }

    public static /* synthetic */ void $r8$lambda$sT1lps5_P_spk0l9a6EloZJgcVg(AuthSession authSession, ButtonWithCounterView buttonWithCounterView, int[] iArr, Integer num) {
        FileLog.m1037d("wear-auth: /answer delivered to " + authSession.originNodeId);
        buttonWithCounterView.setLoading(false);
        showEmojis(iArr[0], authSession.emojis);
    }

    /* JADX INFO: renamed from: $r8$lambda$Xwb-qUKYwf0Syqvg0qWMLNf6-Tw, reason: not valid java name */
    public static /* synthetic */ void m23639$r8$lambda$XwbqUKYwf0Syqvg0qWMLNf6Tw(ButtonWithCounterView buttonWithCounterView, Exception exc) {
        FileLog.m1038e("wear-auth: /answer send failed: " + exc.getMessage());
        buttonWithCounterView.setLoading(false);
    }

    public static void showEmojis(final int i, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Context context = LaunchActivity.instance;
        if (context == null) {
            context = ApplicationLoader.applicationContext;
        }
        if (context == null) {
            return;
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        Theme.ResourcesProvider resourceProvider = safeLastFragment != null ? safeLastFragment.getResourceProvider() : null;
        cancel();
        int i2 = 0;
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourceProvider);
        FrameLayout frameLayout = new FrameLayout(context);
        builder.setCustomView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
        TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, Theme.key_dialogTextBlack, true, resourceProvider);
        textViewMakeTextView.setGravity(17);
        textViewMakeTextView.setText(LocaleController.getString(C2807R.string.WearAuthEmojis));
        linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 49, 32.0f, 24.0f, 32.0f, 9.66f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        while (i2 < list.size()) {
            Drawable emojiBigDrawable = Emoji.getEmojiBigDrawable(list.get(i2));
            ImageView imageView = new ImageView(context);
            imageView.setImageDrawable(emojiBigDrawable);
            NotificationCenter.listenEmojiLoading(imageView);
            imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(80.0f), Theme.multAlpha(Theme.getColor(Theme.key_featuredStickers_addButton, resourceProvider), 0.15f)));
            linearLayout2.addView(imageView, LayoutHelper.createLinear(80, 80, i2 == 0 ? 0.0f : 5.0f, 0.0f, 0.0f, 0.0f));
            i2++;
        }
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 49, 32, 12, 32, 12));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourceProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WearAuthEmojisLogIn));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 12, 12, 12, 8));
        final BottomSheet bottomSheetCreate = builder.create();
        int i3 = Theme.key_windowBackgroundGray;
        bottomSheetCreate.setBackgroundColor(Theme.getColor(i3, resourceProvider));
        bottomSheetCreate.fixNavigationBar(Theme.getColor(i3, resourceProvider));
        currentSheet = bottomSheetCreate;
        bottomSheetCreate.show();
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WearAuthSheet.m23640$r8$lambda$xdTM_WaemPMfWHPpaSnoOgZsnM(round, i, bottomSheetCreate, view);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$xdTM_-WaemPMfWHPpaSnoOgZsnM, reason: not valid java name */
    public static /* synthetic */ void m23640$r8$lambda$xdTM_WaemPMfWHPpaSnoOgZsnM(final ButtonWithCounterView buttonWithCounterView, final int i, final BottomSheet bottomSheet, final View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        final AuthSession authSession = currentSession;
        if (authSession == null || authSession.sharedKey == null) {
            FileLog.m1037d("wear-auth: login pressed with no session/key");
            return;
        }
        buttonWithCounterView.setLoading(true);
        TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth = new TLRPC.TL_messages_requestUrlAuth();
        tL_messages_requestUrlAuth.flags |= 4;
        tL_messages_requestUrlAuth.url = "https://web.telegram.org/";
        ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_requestUrlAuth, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                WearAuthSheet.$r8$lambda$qyXj0JZQmSIB8o9BZQgtRMdhUnk(buttonWithCounterView, bottomSheet, i, view, authSession, (TLRPC.UrlAuthResult) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$qyXj0JZQmSIB8o9BZQgtRMdhUnk(final ButtonWithCounterView buttonWithCounterView, BottomSheet bottomSheet, int i, View view, final AuthSession authSession, TLRPC.UrlAuthResult urlAuthResult, TLRPC.TL_error tL_error) {
        buttonWithCounterView.setLoading(false);
        if (!(urlAuthResult instanceof TLRPC.TL_urlAuthResultAccepted)) {
            if (tL_error != null) {
                BulletinFactory.of(bottomSheet.topBulletinContainer, bottomSheet.getResourcesProvider()).showForError(tL_error);
                return;
            } else {
                BulletinFactory.of(bottomSheet.topBulletinContainer, bottomSheet.getResourcesProvider()).showForError("NO_TOKEN");
                return;
            }
        }
        String queryParameter = Uri.parse("?" + Uri.parse(((TLRPC.TL_urlAuthResultAccepted) urlAuthResult).url).getFragment()).getQueryParameter("tgWebAuthToken");
        if (queryParameter == null) {
            BulletinFactory.of(bottomSheet.topBulletinContainer, bottomSheet.getResourcesProvider()).showForError("NO_TOKEN");
            return;
        }
        int currentDatacenterId = ConnectionsManager.getInstance(i).getCurrentDatacenterId();
        boolean zIsTestBackend = ConnectionsManager.getInstance(i).isTestBackend();
        FileLog.m1037d("wear-auth: sending /token account=" + i + " dcId=" + currentDatacenterId + " isTest=" + zIsTestBackend);
        try {
            Wearable.getMessageClient(view.getContext().getApplicationContext()).sendMessage(authSession.originNodeId, "/tg-wear-auth/token", buildEncryptedTokenWire(authSession, queryParameter, currentDatacenterId, zIsTestBackend)).addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda9
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    WearAuthSheet.$r8$lambda$OcJG_vbyI8TW993hMKLFWF8qEFU(authSession, buttonWithCounterView, (Integer) obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: org.telegram.ui.WearAuthSheet$$ExternalSyntheticLambda10
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    WearAuthSheet.$r8$lambda$ezHylZBEz8URlQfWkZle4PuaTos(buttonWithCounterView, exc);
                }
            });
            bottomSheet.lambda$new$0();
        } catch (Exception e) {
            FileLog.m1040e(e);
            BulletinFactory.of(bottomSheet.topBulletinContainer, bottomSheet.getResourcesProvider()).showForError(e.getMessage());
        }
    }

    public static /* synthetic */ void $r8$lambda$OcJG_vbyI8TW993hMKLFWF8qEFU(AuthSession authSession, ButtonWithCounterView buttonWithCounterView, Integer num) {
        FileLog.m1037d("wear-auth: /token delivered to " + authSession.originNodeId);
        buttonWithCounterView.setLoading(false);
        currentSession = null;
        cancel();
    }

    public static /* synthetic */ void $r8$lambda$ezHylZBEz8URlQfWkZle4PuaTos(ButtonWithCounterView buttonWithCounterView, Exception exc) {
        FileLog.m1038e("wear-auth: /token send failed: " + exc.getMessage());
        buttonWithCounterView.setLoading(false);
    }

    private static byte[] buildEncryptedTokenWire(AuthSession authSession, String str, int i, boolean z) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 9);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.putInt(bytes.length);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.put(z ? (byte) 1 : (byte) 0);
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArr = new byte[12];
        new SecureRandom().nextBytes(bArr);
        byte[] bArrAeadEncrypt = aeadEncrypt(authSession.sharedKey, bArr, null, bArrArray);
        byte[] bArr2 = new byte[bArrAeadEncrypt.length + 28];
        System.arraycopy(authSession.sessionId, 0, bArr2, 0, 16);
        System.arraycopy(bArr, 0, bArr2, 16, 12);
        System.arraycopy(bArrAeadEncrypt, 0, bArr2, 28, bArrAeadEncrypt.length);
        return bArr2;
    }

    public static void cancel() {
        BottomSheet bottomSheet = currentSheet;
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            currentSheet = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isValidPub(BigInteger bigInteger) {
        BigInteger bigInteger2 = BigInteger.ONE;
        return bigInteger.compareTo(bigInteger2) > 0 && bigInteger.compareTo(DH_P.subtract(bigInteger2)) < 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode256(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == 256) {
            return byteArray;
        }
        if (byteArray.length == 257 && byteArray[0] == 0) {
            return Arrays.copyOfRange(byteArray, 1, byteArray.length);
        }
        if (byteArray.length < 256) {
            byte[] bArr = new byte[256];
            System.arraycopy(byteArray, 0, bArr, 256 - byteArray.length, byteArray.length);
            return bArr;
        }
        WearAuthSheet$$ExternalSyntheticBUOutline0.m1104m("unexpected DH value size ", byteArray.length);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] sha256(byte[]... bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            for (byte[] bArr2 : bArr) {
                messageDigest.update(bArr2);
            }
            return messageDigest.digest();
        } catch (Exception e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
            return null;
        }
    }

    private static byte[] aeadEncrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, new SecretKeySpec(bArr, "AES"), new GCMParameterSpec(128, bArr2));
        if (bArr3 != null && bArr3.length > 0) {
            cipher.updateAAD(bArr3);
        }
        return cipher.doFinal(bArr4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> emojify(byte[] bArr, int i) {
        String[] emojis = getEmojis();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(emojis[(int) (bytesToLong(bArr, i2 * 8) % ((long) emojis.length))]);
        }
        return arrayList;
    }

    private static long bytesToLong(byte[] bArr, int i) {
        return (((long) bArr[i + 7]) & 255) | ((((long) bArr[i]) & 127) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
    }
}
