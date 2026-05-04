package com.exteragram.messenger.plugins.p015ui.components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.Plugin;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.EffectsTextView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.Switch;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class PluginCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final Switch checkBox;
    private boolean compact;
    private final ImageView deleteButton;
    private final EffectsTextView descriptionView;
    private final LinearLayout headerLayout;
    private final BackupImageView imageView;
    private final ImageView openInButton;
    private final ImageView pinButton;
    private Plugin plugin;
    private PluginCellDelegate pluginCellDelegate;
    private final TextView pluginNameView;
    private final PluginRequirementsView requirementsLayout;
    private final ImageView settingsButton;
    private final ImageView shareButton;
    private final EffectsTextView subtitleView;

    public PluginCell(Context context) {
        super(context);
        setClickable(false);
        setClipChildren(false);
        setClipToPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 119, 16.0f, 16.0f, 16.0f, 8.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.headerLayout = linearLayout2;
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
        BackupImageView backupImageView = new BackupImageView(context) { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell.1
            @Override // org.telegram.p029ui.Components.BackupImageView, android.view.View
            @SuppressLint({"DrawAllocation"})
            public void onDraw(Canvas canvas) {
                Path path = new Path();
                float fM1124dp = AndroidUtilities.m1124dp(8.0f);
                path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), fM1124dp, fM1124dp, Path.Direction.CW);
                canvas.save();
                canvas.clipPath(path);
                super.onDraw(canvas);
            }
        };
        this.imageView = backupImageView;
        backupImageView.setVisibility(8);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(8.0f));
        backupImageView.getImageReceiver().setAutoRepeat(1);
        linearLayout2.addView(backupImageView, LayoutHelper.createLinear(56, 56, 51, 0, 0, 0, 12));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(1);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2));
        TextView textView = new TextView(context);
        this.pluginNameView = textView;
        textView.setGravity(3);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 18.0f);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setTypeface(AndroidUtilities.bold());
        linearLayout3.addView(textView, LayoutHelper.createLinear(-1, -2));
        EffectsTextView effectsTextView = new EffectsTextView(context);
        this.subtitleView = effectsTextView;
        effectsTextView.setGravity(3);
        effectsTextView.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140162810803419L)));
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        int i = Theme.key_windowBackgroundWhiteLinkText;
        effectsTextView.setLinkTextColor(Theme.getColor(i));
        effectsTextView.setTextSize(1, 14.0f);
        effectsTextView.setEllipsize(truncateAt);
        effectsTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        linearLayout3.addView(effectsTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 2.0f, 0.0f, 0.0f));
        EffectsTextView effectsTextView2 = new EffectsTextView(context);
        this.descriptionView = effectsTextView2;
        effectsTextView2.setGravity(3);
        effectsTextView2.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140244415182043L)));
        effectsTextView2.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView2.setLinkTextColor(Theme.getColor(i));
        linearLayout.addView(effectsTextView2, LayoutHelper.createLinear(-1, -2, 0, 0, 12, 0, 0));
        PluginRequirementsView pluginRequirementsView = new PluginRequirementsView(context);
        this.requirementsLayout = pluginRequirementsView;
        pluginRequirementsView.setVisibility(8);
        linearLayout.addView(pluginRequirementsView, LayoutHelper.createLinear(-1, -2, 0, 0, 12, 0, 0));
        View view = new View(context);
        view.setBackgroundColor(Theme.getColor(Theme.key_divider));
        linearLayout.addView(view, LayoutHelper.createLinear(-1, 1.0f / AndroidUtilities.density, 0, 0, 12, 0, 8));
        LinearLayout linearLayout4 = new LinearLayout(context);
        linearLayout4.setOrientation(0);
        ImageView imageViewCreateButton = createButton(context, C2888R.drawable.msg_share, false, new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(view2);
            }
        });
        this.shareButton = imageViewCreateButton;
        linearLayout4.addView(imageViewCreateButton, LayoutHelper.createFrame(40, 40.0f, 51, 0.0f, 0.0f, 8.0f, 0.0f));
        ImageView imageViewCreateButton2 = createButton(context, C2888R.drawable.msg_openin, false, new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$1(view2);
            }
        });
        this.openInButton = imageViewCreateButton2;
        linearLayout4.addView(imageViewCreateButton2, LayoutHelper.createFrame(40, 40.0f, 51, 0.0f, 0.0f, 8.0f, 0.0f));
        ImageView imageViewCreateButton3 = createButton(context, C2888R.drawable.msg_pin, false, new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(view2);
            }
        });
        this.pinButton = imageViewCreateButton3;
        linearLayout4.addView(imageViewCreateButton3, LayoutHelper.createFrame(40, 40.0f, 51, 0.0f, 0.0f, 8.0f, 0.0f));
        ImageView imageViewCreateButton4 = createButton(context, C2888R.drawable.msg_settings, false, new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$3(view2);
            }
        });
        this.settingsButton = imageViewCreateButton4;
        imageViewCreateButton4.setVisibility(8);
        linearLayout4.addView(imageViewCreateButton4, LayoutHelper.createFrame(40, 40.0f, 51, 0.0f, 0.0f, 8.0f, 0.0f));
        ImageView imageViewCreateButton5 = createButton(context, C2888R.drawable.msg_delete, true, new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$4(view2);
            }
        });
        this.deleteButton = imageViewCreateButton5;
        addView(imageViewCreateButton5, LayoutHelper.createFrame(40, 40.0f, 85, 0.0f, 0.0f, 16.0f, 8.0f));
        linearLayout.addView(linearLayout4, LayoutHelper.createFrame(-1, 40, 83));
        Switch r3 = new Switch(context);
        this.checkBox = r3;
        int i2 = Theme.key_switchTrack;
        int i3 = Theme.key_switchTrackChecked;
        int i4 = Theme.key_windowBackgroundWhite;
        r3.setColors(i2, i3, i4, i4);
        r3.setFocusable(false);
        addView(r3, LayoutHelper.createFrame(37, 40.0f, 53, 0.0f, 16.0f, 24.0f, 0.0f));
        setCompact(ExteraConfig.pluginsCompactView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.pluginCellDelegate.sharePlugin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.pluginCellDelegate.openInExternalApp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.pluginCellDelegate.pinPlugin(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.pluginCellDelegate.openPluginSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        this.pluginCellDelegate.deletePlugin();
    }

    public void setCompact(boolean z) {
        if (this.compact == z) {
            return;
        }
        this.compact = z;
        updateLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
    }

    private void updateLayout() {
        if (this.plugin == null) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) this.headerLayout.getChildAt(1);
        this.headerLayout.setOrientation(!this.compact ? 1 : 0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.imageView.getLayoutParams();
        layoutParams.rightMargin = this.compact ? AndroidUtilities.m1124dp(16.0f) : 0;
        layoutParams.bottomMargin = this.compact ? 0 : AndroidUtilities.m1124dp(12.0f);
        layoutParams.width = this.compact ? AndroidUtilities.m1124dp(49.0f) : AndroidUtilities.m1124dp(56.0f);
        layoutParams.height = this.compact ? AndroidUtilities.m1124dp(49.0f) : AndroidUtilities.m1124dp(56.0f);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
        boolean z = this.compact;
        layoutParams2.gravity = z ? 16 : 3;
        this.pluginNameView.setSingleLine(z);
        this.subtitleView.setSingleLine(this.compact);
        final int iM1124dp = ((!this.compact || this.plugin.hasError()) && (this.compact || (this.plugin.getPack() != null && this.plugin.getIndex() >= 0) || this.plugin.hasError())) ? 0 : AndroidUtilities.m1124dp(61.0f);
        this.pluginNameView.setPadding(0, 0, iM1124dp, 0);
        this.pluginNameView.post(new Runnable() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateLayout$5(iM1124dp);
            }
        });
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateLayout$5(int i) {
        EffectsTextView effectsTextView = this.subtitleView;
        if (this.pluginNameView.getLineCount() > 1) {
            i = 0;
        }
        effectsTextView.setPadding(0, 0, i, 0);
    }

    public void set(Plugin plugin, final PluginCellDelegate pluginCellDelegate) {
        String string;
        if (plugin == null || pluginCellDelegate == null) {
            return;
        }
        this.pluginCellDelegate = pluginCellDelegate;
        this.plugin = plugin;
        setPinned(PluginsController.isPluginPinned(plugin.getId()));
        this.openInButton.setVisibility(pluginCellDelegate.canOpenInExternalApp() ? 0 : 8);
        boolean z = plugin.getPack() != null && plugin.getIndex() >= 0;
        this.imageView.setVisibility(z ? 0 : 8);
        if (z) {
            MediaDataController.getInstance(UserConfig.selectedAccount).setPlaceholderImageByIndex(this.imageView, plugin.getPack(), plugin.getIndex(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140326019560667L));
        } else {
            this.imageView.setImage((ImageLocation) null, (String) null, (Drawable) null, 0, (Object) null);
        }
        this.pluginNameView.setText(plugin.getName());
        EffectsTextView effectsTextView = this.subtitleView;
        if (this.compact) {
            string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140360379299035L);
        } else {
            string = LocaleController.getString(C2888R.string.PluginVersion) + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140368969233627L);
        }
        effectsTextView.setText(new SpannableStringBuilder(string).append((CharSequence) plugin.getVersion()).append((CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140377559168219L)).append(LocaleUtils.formatWithUsernames(plugin.getAuthor())));
        if (plugin.isNotResponding()) {
            bindNotRespondingState();
        } else if (plugin.hasError()) {
            bindErrorState();
        } else {
            bindNormalState();
        }
        this.requirementsLayout.setRequirements(plugin.getRequirements());
        updateLayout();
        this.checkBox.setChecked(plugin.isEnabled(), false);
        this.checkBox.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$set$6(pluginCellDelegate, view);
            }
        });
        AndroidUtilities.updateViewVisibilityAnimated(this.settingsButton, plugin.isEnabled() && PluginsController.getInstance().hasPluginSettings(plugin.getId()), 0.5f, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$set$6(PluginCellDelegate pluginCellDelegate, View view) {
        pluginCellDelegate.togglePlugin(this);
    }

    private void bindNotRespondingState() {
        this.descriptionView.setText(LocaleController.getString(C2888R.string.PluginIsNotResponding));
        this.descriptionView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        this.descriptionView.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140394739037403L)));
        this.descriptionView.setTextSize(1, 12.0f);
        this.descriptionView.setOnClickListener(null);
        this.checkBox.setVisibility(8);
        updateDeleteButton();
    }

    private void updateDeleteButton() {
        boolean zIsNotResponding = this.plugin.isNotResponding();
        this.deleteButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(!zIsNotResponding ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        this.deleteButton.setBackground(Theme.createSelectorDrawable(!zIsNotResponding ? Theme.multAlpha(Theme.getColor(Theme.key_text_RedRegular), 0.12f) : Theme.getColor(Theme.key_dialogButtonSelector), 1, AndroidUtilities.m1124dp(20.0f)));
        this.deleteButton.setImageResource(!zIsNotResponding ? C2888R.drawable.msg_delete : C2888R.drawable.ic_ab_other);
    }

    private void bindErrorState() {
        this.descriptionView.setText(this.plugin.getError().getLocalizedMessage());
        this.descriptionView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        this.descriptionView.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140463458514139L)));
        this.descriptionView.setTextSize(1, 12.0f);
        this.descriptionView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$bindErrorState$7(view);
            }
        });
        this.checkBox.setVisibility(8);
        updateDeleteButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindErrorState$7(View view) {
        if (AndroidUtilities.addToClipboard(AppUtils.stackTraceToString(this.plugin.getError()))) {
            BulletinFactory.m1246of(LaunchActivity.getSafeLastFragment()).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
        }
    }

    private void bindNormalState() {
        this.descriptionView.setText(LocaleUtils.fullyFormatText(this.plugin.getDescription()));
        this.descriptionView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.descriptionView.setTypeface(AndroidUtilities.getTypeface(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986140532177990875L)));
        this.descriptionView.setTextSize(1, 15.0f);
        this.descriptionView.setOnClickListener(null);
        this.checkBox.setVisibility(0);
        updateDeleteButton();
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
    }

    public void setPinned(boolean z) {
        this.pinButton.setImageResource(z ? C2888R.drawable.msg_unpin : C2888R.drawable.msg_pin);
    }

    private ImageView createButton(Context context, int i, boolean z, View.OnClickListener onClickListener) {
        ImageView imageView = new ImageView(context);
        applyClickAnimation(imageView);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(i);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(z ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        imageView.setBackground(Theme.createSelectorDrawable(z ? Theme.multAlpha(Theme.getColor(Theme.key_text_RedRegular), 0.12f) : Theme.getColor(Theme.key_dialogButtonSelector), 1, AndroidUtilities.m1124dp(20.0f)));
        imageView.setOnClickListener(onClickListener);
        return imageView;
    }

    private void applyClickAnimation(View view) {
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginCell$$ExternalSyntheticLambda5
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return PluginCell.$r8$lambda$vqPrryxz8Fiue1bJkXjQwTVoc2o(view2, motionEvent);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$vqPrryxz8Fiue1bJkXjQwTVoc2o(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            view.setPressed(true);
            view.animate().scaleX(0.85f).scaleY(0.85f).setDuration(80L).start();
            return true;
        }
        if (action != 1) {
            if (action != 3) {
                return false;
            }
            view.setPressed(false);
            view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(350L).setInterpolator(new OvershootInterpolator(1.5f)).start();
            return true;
        }
        view.setPressed(false);
        if (motionEvent.getX() >= 0.0f && motionEvent.getX() <= view.getWidth() && motionEvent.getY() >= 0.0f && motionEvent.getY() <= view.getHeight()) {
            view.performClick();
        }
        view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(350L).setInterpolator(new OvershootInterpolator(1.5f)).start();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginSettingsRegistered);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginSettingsUnregistered);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginSettingsRegistered);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginSettingsUnregistered);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if ((i == NotificationCenter.pluginSettingsRegistered || i == NotificationCenter.pluginSettingsUnregistered) && objArr.length > 0) {
            boolean z = false;
            Object obj = objArr[0];
            if ((obj instanceof String) && ((String) obj).equals(this.plugin.getId())) {
                ImageView imageView = this.settingsButton;
                if (i == NotificationCenter.pluginSettingsRegistered && this.plugin.isEnabled()) {
                    z = true;
                }
                AndroidUtilities.updateViewVisibilityAnimated(imageView, z, 0.5f, true, true);
            }
        }
    }

    public static class Factory extends UItem.UItemFactory {
        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean isClickable() {
            return false;
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public PluginCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new PluginCell(context);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            if (view instanceof PluginCell) {
                ((PluginCell) view).set((Plugin) uItem.object, (PluginCellDelegate) uItem.object2);
            }
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            return uItem.f2105id == uItem2.f2105id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            if (uItem.f2105id != uItem2.f2105id || uItem.intValue != uItem2.intValue) {
                return false;
            }
            Object obj = uItem.object;
            Plugin plugin = obj instanceof Plugin ? (Plugin) obj : null;
            Object obj2 = uItem2.object;
            Object obj3 = obj2 instanceof Plugin ? (Plugin) obj2 : null;
            if (plugin == null || obj3 == null) {
                return false;
            }
            return plugin == obj3 || plugin.equals(obj3);
        }

        public static UItem asPlugin(Plugin plugin, PluginCellDelegate pluginCellDelegate) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.f2105id = plugin.getId().hashCode();
            uItemOfFactory.object = plugin;
            uItemOfFactory.object2 = pluginCellDelegate;
            uItemOfFactory.intValue = (plugin.isNotResponding() ? 1 : 0) | (plugin.isEnabled() ? 2 : 0) | (plugin.hasError() ? 4 : 0);
            return uItemOfFactory;
        }
    }
}
