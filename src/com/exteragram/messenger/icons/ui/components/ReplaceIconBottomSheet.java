package com.exteragram.messenger.icons.ui.components;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.caverock.androidsvg.SVG;
import com.exteragram.messenger.icons.ExteraResources;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.icons.IconPackStorage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class ReplaceIconBottomSheet extends BottomSheet {
    private final IconPack iconPack;
    private int loadedOriginalHeight;
    private int loadedOriginalWidth;
    private boolean needReset;
    private boolean needSave;
    private Drawable newDrawable;
    private IconInfoView newIconInfoView;
    private String newIconOriginalName;
    private File newIconTempFile;
    private Drawable originalDrawable;
    private IconInfoView originalIconInfoView;
    private final int resId;
    private ButtonWithCounterView resetButton;
    private final String resourceName;
    private int savedCustomFileHeight;
    private int savedCustomFileWidth;
    private boolean waitingForResult;

    public ReplaceIconBottomSheet(Context context, int i, IconPack iconPack) {
        super(context, false);
        this.waitingForResult = false;
        this.loadedOriginalWidth = 0;
        this.loadedOriginalHeight = 0;
        this.savedCustomFileWidth = 0;
        this.savedCustomFileHeight = 0;
        this.needSave = false;
        this.needReset = false;
        this.resId = i;
        this.iconPack = iconPack;
        this.resourceName = context.getResources().getResourceEntryName(i);
        setCustomView(createView(context));
        loadDrawables(context);
    }

    private void loadDrawables(final Context context) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$loadDrawables$1(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0115  */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadDrawables$1(Context context) throws Throwable {
        Drawable originalDrawable;
        final int intrinsicWidth;
        final int intrinsicHeight;
        final BitmapDrawable bitmapDrawable;
        final ?? r8;
        final ?? r9;
        ?? r7;
        ?? r72;
        ?? r2;
        int documentHeight;
        Throwable th;
        int i;
        if (context.getResources() instanceof ExteraResources) {
            try {
                originalDrawable = ((ExteraResources) context.getResources()).getOriginalDrawable(this.resId);
            } catch (Exception unused) {
                originalDrawable = null;
            }
        } else {
            originalDrawable = null;
        }
        if (originalDrawable == null) {
            originalDrawable = ResourcesCompat.getDrawable(context.getResources(), this.resId, context.getTheme());
        }
        final Drawable drawable = originalDrawable;
        ?? r22 = 0;
        ?? r23 = 0;
        if (drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        String str = (String) this.iconPack.getIcons().get(this.resourceName);
        if (str != null) {
            File iconPacksDirectory = IconPackStorage.INSTANCE.getIconPacksDirectory();
            ?? sb = new StringBuilder();
            sb.append(this.iconPack.getId());
            sb.append("/");
            sb.append(str);
            File file = new File(iconPacksDirectory, sb.toString());
            if (file.exists()) {
                try {
                    try {
                        if (file.getName().toLowerCase().endsWith(".svg")) {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            try {
                                SVG fromInputStream = SVG.getFromInputStream(fileInputStream);
                                int documentWidth = (int) (fromInputStream.getDocumentWidth() > 0.0f ? fromInputStream.getDocumentWidth() : fromInputStream.getDocumentViewBox().width());
                                try {
                                    documentHeight = (int) (fromInputStream.getDocumentHeight() > 0.0f ? fromInputStream.getDocumentHeight() : fromInputStream.getDocumentViewBox().height());
                                    fileInputStream.close();
                                    sb = documentWidth;
                                } catch (Throwable th2) {
                                    i = documentWidth;
                                    th = th2;
                                    try {
                                        try {
                                            fileInputStream.close();
                                            throw th;
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                            throw th;
                                        }
                                    } catch (Exception e) {
                                        e = e;
                                        r7 = 0;
                                        r22 = i;
                                        FileLog.m955e(e);
                                        r2 = r22;
                                        r72 = r7;
                                        Bitmap bitmapCreateBitmapFromFile = IconManager.INSTANCE.createBitmapFromFile(file.getAbsolutePath(), this.resId, AndroidUtilities.displayMetrics.densityDpi, context.getTheme());
                                        r8 = r2;
                                        r9 = r72;
                                        bitmapDrawable = bitmapCreateBitmapFromFile != null ? new BitmapDrawable(context.getResources(), bitmapCreateBitmapFromFile) : null;
                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda4
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.f$0.lambda$loadDrawables$0(drawable, intrinsicWidth, intrinsicHeight, bitmapDrawable, r8, r9);
                                            }
                                        });
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                i = 0;
                            }
                        } else {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                            int i2 = options.outWidth;
                            documentHeight = options.outHeight;
                            sb = i2;
                        }
                        r72 = documentHeight;
                        r23 = sb;
                        r2 = r23;
                    } catch (Exception e2) {
                        e = e2;
                        r7 = r23;
                        r22 = sb;
                    }
                } catch (Exception e3) {
                    e = e3;
                    r7 = 0;
                }
                Bitmap bitmapCreateBitmapFromFile2 = IconManager.INSTANCE.createBitmapFromFile(file.getAbsolutePath(), this.resId, AndroidUtilities.displayMetrics.densityDpi, context.getTheme());
                r8 = r2;
                r9 = r72;
                bitmapDrawable = bitmapCreateBitmapFromFile2 != null ? new BitmapDrawable(context.getResources(), bitmapCreateBitmapFromFile2) : null;
            } else {
                bitmapDrawable = null;
                r8 = 0;
                r9 = 0;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadDrawables$0(drawable, intrinsicWidth, intrinsicHeight, bitmapDrawable, r8, r9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDrawables$0(Drawable drawable, int i, int i2, Drawable drawable2, int i3, int i4) {
        this.originalDrawable = drawable;
        this.loadedOriginalWidth = i;
        this.loadedOriginalHeight = i2;
        this.newDrawable = drawable2;
        this.savedCustomFileWidth = i3;
        this.savedCustomFileHeight = i4;
        IconInfoView iconInfoView = this.originalIconInfoView;
        if (iconInfoView != null) {
            iconInfoView.update(drawable, this.resourceName, i, i2);
        }
        ButtonWithCounterView buttonWithCounterView = this.resetButton;
        if (buttonWithCounterView != null) {
            buttonWithCounterView.setText(LocaleController.getString(this.newDrawable != null ? C2484R.string.Reset : C2484R.string.Cancel), false);
        }
        updateNewInfo(this.newDrawable, (String) this.iconPack.getIcons().get(this.resourceName), this.savedCustomFileWidth, this.savedCustomFileHeight);
    }

    private View createView(final Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.dp(16.0f), 0, 0);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(1);
        linearLayout2.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        IconInfoView iconInfoView = new IconInfoView(context, false);
        this.originalIconInfoView = iconInfoView;
        iconInfoView.update(this.originalDrawable, this.resourceName, this.loadedOriginalWidth, this.loadedOriginalHeight);
        linearLayout2.addView(this.originalIconInfoView, LayoutHelper.createLinear(0, -2, 1.0f));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(1);
        linearLayout3.setGravity(1);
        linearLayout3.addView(new ArrowView(context), LayoutHelper.createLinear(24, 60));
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-2, -2, 0.0f, 0, 24, 0, 24, 0));
        IconInfoView iconInfoView2 = new IconInfoView(context, true);
        this.newIconInfoView = iconInfoView2;
        iconInfoView2.setTargetDimensions(this.loadedOriginalWidth, this.loadedOriginalHeight);
        this.newIconInfoView.getIconView().setFocusable(true);
        this.newIconInfoView.getIconView().setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(context, view);
            }
        });
        linearLayout2.addView(this.newIconInfoView, LayoutHelper.createLinear(0, -2, 1.0f));
        updateNewInfo(this.newDrawable, (String) this.iconPack.getIcons().get(this.resourceName), this.savedCustomFileWidth, this.savedCustomFileHeight);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 24.0f));
        LinearLayout linearLayout4 = new LinearLayout(context);
        linearLayout4.setOrientation(1);
        linearLayout4.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, this.resourcesProvider);
        buttonWithCounterView.setRound();
        buttonWithCounterView.setText(LocaleController.getString(C2484R.string.Save), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$6(view);
            }
        });
        linearLayout4.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48));
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, this.resourcesProvider);
        this.resetButton = buttonWithCounterView2;
        buttonWithCounterView2.setRound().setNeutral();
        this.resetButton.setText(LocaleController.getString(this.iconPack.getIcons().get(this.resourceName) != null ? C2484R.string.Reset : C2484R.string.Cancel), false);
        this.resetButton.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$7(view);
            }
        });
        linearLayout4.addView(this.resetButton, LayoutHelper.createLinear(-1, 48, 0.0f, 8.0f, 0.0f, 0.0f));
        linearLayout.addView(linearLayout4, LayoutHelper.createLinear(-1, -2));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(final Context context, View view) {
        BaseFragment safeLastFragment;
        final Activity parentActivity;
        boolean z;
        ClipData primaryClip;
        if (isDismissed() || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null || (parentActivity = safeLastFragment.getParentActivity()) == null) {
            return;
        }
        final ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null || !clipboardManager.hasPrimaryClip() || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) {
            z = false;
        } else {
            ClipData.Item itemAt = primaryClip.getItemAt(0);
            if (itemAt.getUri() == null) {
                if (itemAt.getText() != null) {
                    String strTrim = itemAt.getText().toString().trim();
                    if (strTrim.isEmpty() || (!strTrim.contains("<svg") && !strTrim.contains("<SVG") && !strTrim.startsWith("/"))) {
                    }
                }
                z = false;
            }
            z = true;
        }
        ItemOptions.makeOptions(this.containerView, view).addIf(z, C2484R.drawable.msg_copy, LocaleController.getString(C2484R.string.PasteFromClipboard), new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2(clipboardManager, context);
            }
        }).add(C2484R.drawable.msg_photos, LocaleController.getString(C2484R.string.SelectFromGallery), new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3(parentActivity);
            }
        }).add(C2484R.drawable.msg2_folder, LocaleController.getString(C2484R.string.StoryMusicSelectFromFiles), new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$4(parentActivity);
            }
        }).setDrawScrim(false).setOnTopOfScrim().setDimAlpha(0).setGravity(1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(ClipboardManager clipboardManager, Context context) {
        if (clipboardManager == null || clipboardManager.getPrimaryClip() == null || clipboardManager.getPrimaryClip().getItemCount() <= 0) {
            return;
        }
        ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
        Uri uri = itemAt.getUri();
        if (uri != null) {
            processSelectedImage(context, uri);
            return;
        }
        CharSequence text = itemAt.getText();
        if (text != null) {
            processClipboardText(context, text);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(Activity activity) {
        startPicker(activity, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(Activity activity) {
        startPicker(activity, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        if (this.newIconTempFile != null) {
            this.needSave = true;
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        if (this.newDrawable != null) {
            this.needReset = true;
        }
        lambda$new$0();
    }

    private void updateNewInfo(Drawable drawable, String str, int i, int i2) {
        int i3;
        IconInfoView iconInfoView = this.newIconInfoView;
        if (iconInfoView != null) {
            int i4 = this.loadedOriginalWidth;
            if (i4 > 0 && (i3 = this.loadedOriginalHeight) > 0) {
                iconInfoView.setTargetDimensions(i4, i3);
            }
            this.newIconInfoView.update(drawable, str, i, i2);
        }
    }

    private void startPicker(final Activity activity, boolean z) {
        this.waitingForResult = true;
        IconManager.INSTANCE.startIconPicker(activity, z, new Function1() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f$0.lambda$startPicker$8(activity, (Uri) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$startPicker$8(Activity activity, Uri uri) {
        this.waitingForResult = false;
        if (uri != null) {
            processSelectedImage(activity, uri);
        }
        return Unit.INSTANCE;
    }

    private void updateNewIconFromFile(Context context, final File file, final String str, final int i, final int i2) {
        Bitmap bitmapCreateBitmapFromFile = IconManager.INSTANCE.createBitmapFromFile(file.getAbsolutePath(), this.resId, AndroidUtilities.displayMetrics.densityDpi, context.getTheme());
        if (bitmapCreateBitmapFromFile != null) {
            final BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmapCreateBitmapFromFile);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateNewIconFromFile$9(file, str, bitmapDrawable, i, i2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateNewIconFromFile$9(File file, String str, Drawable drawable, int i, int i2) {
        if (isDismissed()) {
            file.delete();
            return;
        }
        File file2 = this.newIconTempFile;
        if (file2 != null && file2.exists() && !this.newIconTempFile.equals(file)) {
            this.newIconTempFile.delete();
        }
        this.newIconTempFile = file;
        this.newIconOriginalName = str;
        this.newDrawable = drawable;
        updateNewInfo(drawable, str, i, i2);
    }

    private void processClipboardText(final Context context, final CharSequence charSequence) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processClipboardText$10(charSequence, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processClipboardText$10(CharSequence charSequence, Context context) {
        try {
            String string = charSequence.toString();
            if (!string.contains("<svg") && !string.contains("<SVG")) {
                if (string.trim().startsWith("/")) {
                    File file = new File(string.trim());
                    if (file.exists()) {
                        processSelectedImage(context, Uri.fromFile(file));
                        return;
                    }
                    return;
                }
                return;
            }
            File file2 = new File(ApplicationLoader.applicationContext.getCacheDir(), "temp_import_" + System.currentTimeMillis() + ".svg");
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(string.getBytes());
                fileOutputStream.close();
                FileInputStream fileInputStream = new FileInputStream(file2);
                try {
                    SVG fromInputStream = SVG.getFromInputStream(fileInputStream);
                    int documentWidth = (int) (fromInputStream.getDocumentWidth() > 0.0f ? fromInputStream.getDocumentWidth() : fromInputStream.getDocumentViewBox().width());
                    int documentHeight = (int) (fromInputStream.getDocumentHeight() > 0.0f ? fromInputStream.getDocumentHeight() : fromInputStream.getDocumentViewBox().height());
                    fileInputStream.close();
                    updateNewIconFromFile(context, file2, this.resourceName + ".svg", documentWidth, documentHeight);
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    private void processSelectedImage(final Context context, final Uri uri) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$processSelectedImage$11(context, uri);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(12:(11:(29:156|6|(0)(1:10)|(1:26)|27|(1:29)|30|165|31|158|32|33|(4:35|148|36|(2:37|(1:39)(1:172)))(0)|50|(1:52)|58|150|59|60|166|61|(5:63|(5:65|(4:67|(0)|163|74)|73|163|74)|72|163|74)(3:73|163|74)|(1:87)(2:88|(1:97)(2:93|(1:95)(1:96)))|98|(3:100|(1:102)|103)|104|(3:(8:107|171|108|(1:110)(1:113)|114|(1:116)(1:117)|118|119)(1:126)|120|127)|128|(2:130|180)(1:179))|166|61|(0)(0)|(0)(0)|98|(0)|104|(0)|128|(0)(0))|158|32|33|(0)(0)|50|(0)|58|150|59|60|(2:(0)|(1:151))) */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x010b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x010c, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x015b A[Catch: all -> 0x00b8, Exception -> 0x00bd, TryCatch #9 {Exception -> 0x00bd, blocks: (B:31:0x0082, B:52:0x00b4, B:98:0x0142, B:100:0x015b, B:102:0x0163, B:103:0x0167, B:104:0x0179, B:107:0x01a7, B:119:0x01e0, B:127:0x0204, B:125:0x01f0, B:124:0x01ed, B:126:0x01f1, B:88:0x0115, B:90:0x0121, B:93:0x012e, B:85:0x010d, B:136:0x021b, B:135:0x0218), top: B:165:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:179:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0041 A[Catch: all -> 0x0036, Exception -> 0x003a, TryCatch #11 {Exception -> 0x003a, blocks: (B:3:0x0007, B:26:0x0041, B:27:0x0044, B:29:0x004a, B:30:0x005f, B:19:0x0035, B:18:0x0032), top: B:168:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004a A[Catch: all -> 0x0036, Exception -> 0x003a, TryCatch #11 {Exception -> 0x003a, blocks: (B:3:0x0007, B:26:0x0041, B:27:0x0044, B:29:0x004a, B:30:0x005f, B:19:0x0035, B:18:0x0032), top: B:168:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b4 A[Catch: all -> 0x00b8, Exception -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #9 {Exception -> 0x00bd, blocks: (B:31:0x0082, B:52:0x00b4, B:98:0x0142, B:100:0x015b, B:102:0x0163, B:103:0x0167, B:104:0x0179, B:107:0x01a7, B:119:0x01e0, B:127:0x0204, B:125:0x01f0, B:124:0x01ed, B:126:0x01f1, B:88:0x0115, B:90:0x0121, B:93:0x012e, B:85:0x010d, B:136:0x021b, B:135:0x0218), top: B:165:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d2 A[Catch: all -> 0x00f6, TryCatch #10 {all -> 0x00f6, blocks: (B:61:0x00ca, B:63:0x00d2, B:65:0x00e7, B:67:0x00ef), top: B:166:0x00ca }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0115 A[Catch: all -> 0x00b8, Exception -> 0x00bd, TryCatch #9 {Exception -> 0x00bd, blocks: (B:31:0x0082, B:52:0x00b4, B:98:0x0142, B:100:0x015b, B:102:0x0163, B:103:0x0167, B:104:0x0179, B:107:0x01a7, B:119:0x01e0, B:127:0x0204, B:125:0x01f0, B:124:0x01ed, B:126:0x01f1, B:88:0x0115, B:90:0x0121, B:93:0x012e, B:85:0x010d, B:136:0x021b, B:135:0x0218), top: B:165:0x0082 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processSelectedImage$11(Context context, Uri uri) throws Throwable {
        Throwable th;
        Exception exc;
        Cursor cursorQuery;
        int columnIndex;
        String string;
        File file;
        InputStream inputStreamOpenInputStream;
        boolean z;
        String str;
        File file2;
        int documentWidth;
        int documentHeight;
        FileInputStream fileInputStream;
        int i;
        File file3 = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
            } catch (Exception e) {
                exc = e;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            try {
                try {
                    try {
                        if (cursorQuery != null) {
                            try {
                                if (cursorQuery.moveToFirst() && (columnIndex = cursorQuery.getColumnIndex("_display_name")) != -1) {
                                    string = cursorQuery.getString(columnIndex);
                                }
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (TextUtils.isEmpty(string)) {
                                    string = "icon_" + System.currentTimeMillis();
                                }
                                file = new File(ApplicationLoader.applicationContext.getCacheDir(), "temp_import_" + System.currentTimeMillis() + "_raw");
                                inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                if (inputStreamOpenInputStream != null) {
                                    try {
                                        byte[] bArr = new byte[4096];
                                        while (true) {
                                            int i2 = inputStreamOpenInputStream.read(bArr);
                                            if (i2 == -1) {
                                                break;
                                            } else {
                                                fileOutputStream.write(bArr, 0, i2);
                                            }
                                        }
                                    } finally {
                                    }
                                }
                                fileOutputStream.close();
                                if (inputStreamOpenInputStream != null) {
                                    inputStreamOpenInputStream.close();
                                }
                                fileInputStream = new FileInputStream(file);
                                byte[] bArr2 = new byte[1024];
                                i = fileInputStream.read(bArr2);
                                if (i <= 0) {
                                    String lowerCase = new String(bArr2, 0, i).trim().toLowerCase(Locale.ROOT);
                                    try {
                                        if (!lowerCase.contains("<svg")) {
                                            if (lowerCase.startsWith("<?xml")) {
                                                if (lowerCase.contains("<svg")) {
                                                }
                                                fileInputStream.close();
                                            }
                                            z = false;
                                            fileInputStream.close();
                                        }
                                        fileInputStream.close();
                                    } catch (Exception e2) {
                                        e = e2;
                                        FileLog.m955e(e);
                                    }
                                    z = true;
                                } else {
                                    z = false;
                                    fileInputStream.close();
                                }
                                if (!z) {
                                    str = "svg";
                                } else if (string.toLowerCase().endsWith(".jpg") || string.toLowerCase().endsWith(".jpeg")) {
                                    str = "jpg";
                                } else if (string.toLowerCase().endsWith(".webp")) {
                                    str = "webp";
                                } else {
                                    str = "png";
                                }
                                if (!string.toLowerCase().endsWith("." + str)) {
                                    int iLastIndexOf = string.lastIndexOf(46);
                                    if (iLastIndexOf > 0) {
                                        string = string.substring(0, iLastIndexOf);
                                    }
                                    string = string + "." + str;
                                }
                                String str2 = string;
                                file2 = new File(ApplicationLoader.applicationContext.getCacheDir(), "temp_import_" + System.currentTimeMillis() + "." + str);
                                if (file.renameTo(file2)) {
                                    if (z) {
                                        FileInputStream fileInputStream2 = new FileInputStream(file2);
                                        try {
                                            SVG fromInputStream = SVG.getFromInputStream(fileInputStream2);
                                            documentWidth = (int) (fromInputStream.getDocumentWidth() > 0.0f ? fromInputStream.getDocumentWidth() : fromInputStream.getDocumentViewBox().width());
                                            documentHeight = (int) (fromInputStream.getDocumentHeight() > 0.0f ? fromInputStream.getDocumentHeight() : fromInputStream.getDocumentViewBox().height());
                                            fileInputStream2.close();
                                        } finally {
                                        }
                                    } else {
                                        BitmapFactory.Options options = new BitmapFactory.Options();
                                        options.inJustDecodeBounds = true;
                                        BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                                        documentWidth = options.outWidth;
                                        documentHeight = options.outHeight;
                                    }
                                    updateNewIconFromFile(context, file2, str2, documentWidth, documentHeight);
                                }
                                if (file.exists()) {
                                    return;
                                }
                                file.delete();
                                return;
                            } finally {
                            }
                        }
                        byte[] bArr22 = new byte[1024];
                        i = fileInputStream.read(bArr22);
                        if (i <= 0) {
                        }
                        if (!z) {
                        }
                        if (!string.toLowerCase().endsWith("." + str)) {
                        }
                        String str22 = string;
                        file2 = new File(ApplicationLoader.applicationContext.getCacheDir(), "temp_import_" + System.currentTimeMillis() + "." + str);
                        if (file.renameTo(file2)) {
                        }
                        if (file.exists()) {
                        }
                    } catch (Throwable th3) {
                        try {
                            fileInputStream.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    if (inputStreamOpenInputStream != null) {
                    }
                    fileOutputStream2.close();
                    if (inputStreamOpenInputStream != null) {
                    }
                    fileInputStream = new FileInputStream(file);
                } finally {
                }
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            } catch (Exception e3) {
                exc = e3;
                file3 = file;
                FileLog.m955e(exc);
                if (file3 == null || !file3.exists()) {
                    return;
                }
                file3.delete();
                return;
            }
        } catch (Throwable th5) {
            th = th5;
            file3 = file;
            if (file3 != null && file3.exists()) {
                file3.delete();
                throw th;
            }
            throw th;
        }
        string = null;
        if (cursorQuery != null) {
        }
        if (TextUtils.isEmpty(string)) {
        }
        file = new File(ApplicationLoader.applicationContext.getCacheDir(), "temp_import_" + System.currentTimeMillis() + "_raw");
    }

    private static class IconInfoView extends LinearLayout {
        private final BorderedImageView iconView;
        private final TextView infoName;
        private final TextView infoResolution;
        private float targetAspectRatio;

        public IconInfoView(Context context, boolean z) {
            super(context);
            this.targetAspectRatio = -1.0f;
            setOrientation(1);
            setGravity(1);
            BorderedImageView borderedImageView = new BorderedImageView(context);
            this.iconView = borderedImageView;
            borderedImageView.setDashed(z);
            borderedImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
            borderedImageView.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
            borderedImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            addView(borderedImageView, LayoutHelper.createLinear(60, 60));
            TextView textView = new TextView(context);
            this.infoName = textView;
            textView.setTextSize(1, 13.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            textView.setGravity(17);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            addView(textView, LayoutHelper.createLinear(-2, -2, 0.0f, 12.0f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.infoResolution = textView2;
            textView2.setTextSize(1, 13.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            textView2.setGravity(17);
            addView(textView2, LayoutHelper.createLinear(-2, -2, 0.0f, 2.0f, 0.0f, 0.0f));
        }

        public void setTargetDimensions(int i, int i2) {
            if (i > 0 && i2 > 0) {
                this.targetAspectRatio = i / i2;
            } else {
                this.targetAspectRatio = -1.0f;
            }
        }

        public void update(Drawable drawable, String str, int i, int i2) {
            if (drawable != null) {
                if (i <= 0) {
                    i = drawable.getIntrinsicWidth();
                }
                if (i2 <= 0) {
                    i2 = drawable.getIntrinsicHeight();
                }
                this.infoResolution.setText(String.format("%s (%s)", String.format(Locale.ROOT, "%d×%d", Integer.valueOf(i), Integer.valueOf(i2)), getAspectRatioString(i, i2)));
                this.infoResolution.setVisibility(0);
                float f = this.targetAspectRatio;
                if (f > 0.0f && i2 > 0 && Math.abs((i / i2) - f) > 0.1f) {
                    this.infoResolution.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                } else {
                    this.infoResolution.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
                }
                this.iconView.setImageDrawable(drawable);
            } else {
                this.infoResolution.setVisibility(4);
                this.iconView.setImageDrawable(null);
            }
            if (str != null) {
                this.infoName.setText(str);
                this.infoName.setVisibility(0);
            } else {
                this.infoName.setVisibility(4);
            }
        }

        public BorderedImageView getIconView() {
            return this.iconView;
        }

        private String getAspectRatioString(int i, int i2) {
            if (i2 == 0) {
                return "?";
            }
            int iGcd = gcd(i, i2);
            return (i / iGcd) + ":" + (i2 / iGcd);
        }

        private int gcd(int i, int i2) {
            return i2 == 0 ? i : gcd(i2, i % i2);
        }
    }

    private static class ArrowView extends View {
        private final Paint paint;
        private final Path path;

        public ArrowView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.paint = paint;
            this.path = new Path();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            float fDp = AndroidUtilities.dp(18.0f);
            this.path.reset();
            float f = fDp / 2.0f;
            this.path.moveTo(width - f, height);
            float f2 = width + f;
            this.path.lineTo(f2, height);
            this.path.moveTo(f2 - AndroidUtilities.dp(7.0f), height - AndroidUtilities.dp(7.0f));
            this.path.lineTo(f2, height);
            this.path.lineTo(f2 - AndroidUtilities.dp(7.0f), height + AndroidUtilities.dp(7.0f));
            canvas.drawPath(this.path, this.paint);
        }
    }

    public static class BorderedImageView extends ImageView {
        private final Paint bgPaint;
        private final float cornerRadius;
        private final Paint dashedPaint;
        private boolean isDashed;
        private final Path path;
        private final RectF rect;
        private final Paint solidPaint;
        private final float strokeWidth;

        public BorderedImageView(Context context) {
            this(context, null);
        }

        public BorderedImageView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.isDashed = false;
            this.path = new Path();
            this.rect = new RectF();
            this.cornerRadius = AndroidUtilities.dp(12.0f);
            float fDpf2 = AndroidUtilities.dpf2(1.25f);
            this.strokeWidth = fDpf2;
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            Paint paint2 = new Paint(1);
            this.solidPaint = paint2;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            int i = Theme.key_windowBackgroundWhiteGrayText;
            paint2.setColor(AndroidUtilities.multiplyAlphaComponent(Theme.getColor(i), 0.3f));
            paint2.setStrokeWidth(fDpf2);
            Paint paint3 = new Paint(1);
            this.dashedPaint = paint3;
            paint3.setStyle(style);
            paint3.setColor(AndroidUtilities.multiplyAlphaComponent(Theme.getColor(i), 0.3f));
            paint3.setStrokeWidth(fDpf2);
            paint3.setPathEffect(new DashPathEffect(new float[]{AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f)}, 0.0f));
        }

        public void setDashed(boolean z) {
            this.isDashed = z;
            invalidate();
        }

        @Override // android.widget.ImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            float f = this.strokeWidth / 2.0f;
            this.rect.set(f, f, getWidth() - f, getHeight() - f);
            RectF rectF = this.rect;
            float f2 = this.cornerRadius;
            canvas.drawRoundRect(rectF, f2, f2, this.bgPaint);
            super.onDraw(canvas);
            this.path.reset();
            Path path = this.path;
            RectF rectF2 = this.rect;
            float f3 = this.cornerRadius;
            path.addRoundRect(rectF2, f3, f3, Path.Direction.CW);
            canvas.drawPath(this.path, this.isDashed ? this.dashedPaint : this.solidPaint);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        if (this.needSave) {
            IconManager.INSTANCE.saveCustomIcon(this.iconPack.getId(), this.resId, this.newIconTempFile, this.newIconOriginalName);
            return;
        }
        File file = this.newIconTempFile;
        if (file != null && file.exists()) {
            this.newIconTempFile.delete();
        }
        if (this.needReset) {
            IconManager.INSTANCE.resetCustomIcon(this.iconPack.getId(), this.resId);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        if (this.waitingForResult) {
            return;
        }
        super.lambda$new$0();
    }
}
