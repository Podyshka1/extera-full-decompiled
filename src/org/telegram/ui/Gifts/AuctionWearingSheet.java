package org.telegram.ui.Gifts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.GiftAuctionController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Gifts.AuctionBidSheet;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.PremiumFeatureCell;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes7.dex */
public class AuctionWearingSheet extends BottomSheetWithRecyclerListView implements GiftAuctionController.OnAuctionUpdateListener {
    private UniversalAdapter adapter;
    private GiftAuctionController.Auction auction;
    private final ButtonWithCounterView buttonView;
    private final GiftSheet.GiftCell giftCell2;
    private final long giftId;
    private final TextView giftNameTextView;
    private final FrameLayout headerContainer;
    private final LinearLayout linearLayout;
    private final TL_stars.StarGift starGift;
    private final StarGiftSheet.TopView topView;

    public static /* synthetic */ void $r8$lambda$1dE0Ue2ZVkL_qNb0B3OVvB86LgY(View view) {
    }

    public static /* synthetic */ void $r8$lambda$8pqS2XKsbnveudOYL0RukDwECTY(View view) {
    }

    public static /* synthetic */ void $r8$lambda$AQeINEFzbZNcynMq9Ua49ICHRDY(View view) {
    }

    public static /* synthetic */ void $r8$lambda$QgMvPEWw3PTzd_LyMdx3dKiSER8(View view) {
    }

    public static /* synthetic */ void $r8$lambda$tFJbMCLOH1FF87uxFHNVccD1TdI(View view) {
    }

    public static /* synthetic */ void $r8$lambda$xpPhtK2alAo5v1jQQnMtJfcDSuw(View view) {
    }

    private void updateTable(boolean z) {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x051f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AuctionWearingSheet(final Context context, final Theme.ResourcesProvider resourcesProvider, final long j, final TL_stars.StarGift starGift, final ArrayList<TL_stars.StarGiftAttribute> arrayList, final Runnable runnable, boolean z) {
        long j2;
        AvatarDrawable avatarDrawable;
        AvatarDrawable avatarDrawable2;
        TLObject tLObject;
        Context context2;
        Theme.ResourcesProvider resourcesProvider2;
        GiftAuctionController.Auction auction;
        LinkSpanDrawable.LinksTextView linksTextView;
        boolean z2;
        final AuctionWearingSheet auctionWearingSheet;
        TLRPC.User user;
        super(context, null, false, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.FADING, resourcesProvider);
        this.starGift = starGift;
        long j3 = starGift.id;
        this.giftId = j3;
        this.headerMoveTop = AndroidUtilities.dp(6.0f);
        this.topPadding = 0.2f;
        setBackgroundColor(getBackgroundColor());
        fixNavigationBar();
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setClickable(true);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.1
            RectF rectF = new RectF();
            RectF rectF2 = new RectF();

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                if (ViewPositionWatcher.computeRectInParent(AuctionWearingSheet.this.topView.imageLayout, this, this.rectF) && ViewPositionWatcher.computeRectInParent(AuctionWearingSheet.this.giftNameTextView, this, this.rectF2)) {
                    float fDp = this.rectF2.right - AndroidUtilities.dp(32.0f);
                    float fCenterY = this.rectF2.centerY() - AndroidUtilities.dp(16.0f);
                    if (this.rectF.isEmpty()) {
                        return;
                    }
                    canvas.save();
                    canvas.translate(fDp, fCenterY);
                    canvas.scale(AndroidUtilities.dp(32.0f) / this.rectF.width(), AndroidUtilities.dp(32.0f) / this.rectF.height());
                    AuctionWearingSheet.this.topView.imageLayout.draw(canvas);
                    canvas.restore();
                }
            }
        };
        this.headerContainer = frameLayout;
        linearLayout.addView(frameLayout);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.buttonView = buttonWithCounterView;
        buttonWithCounterView.setRound();
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 16.0f, 16.0f, 16.0f);
        int i = layoutParamsCreateFrame.leftMargin;
        int i2 = this.backgroundPaddingLeft;
        layoutParamsCreateFrame.leftMargin = i + i2;
        layoutParamsCreateFrame.rightMargin += i2;
        this.containerView.addView(buttonWithCounterView, layoutParamsCreateFrame);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.dp(64.0f));
        this.adapter.update(false);
        final int i4 = z ? Opcodes.REM_INT_LIT8 : Opcodes.ADD_INT_LIT16;
        this.auction = GiftAuctionController.getInstance(this.currentAccount).subscribeToGiftAuction(j3, this);
        StarGiftSheet.TopView topView = new StarGiftSheet.TopView(context, resourcesProvider, new Runnable() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openCrafting$8();
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuctionWearingSheet.$r8$lambda$xpPhtK2alAo5v1jQQnMtJfcDSuw(view);
            }
        }, null, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuctionWearingSheet.$r8$lambda$tFJbMCLOH1FF87uxFHNVccD1TdI(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuctionWearingSheet.$r8$lambda$8pqS2XKsbnveudOYL0RukDwECTY(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuctionWearingSheet.$r8$lambda$AQeINEFzbZNcynMq9Ua49ICHRDY(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuctionWearingSheet.$r8$lambda$1dE0Ue2ZVkL_qNb0B3OVvB86LgY(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuctionWearingSheet.$r8$lambda$QgMvPEWw3PTzd_LyMdx3dKiSER8(view);
            }
        }) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.2
            Path path = new Path();

            /* JADX INFO: renamed from: r */
            float[] f1035r = new float[8];

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            public float getRealHeight() {
                return AndroidUtilities.dp(i4);
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            public int getFinalHeight() {
                return AndroidUtilities.dp(i4);
            }

            @Override // android.view.View
            public void onSizeChanged(int i5, int i6, int i7, int i8) {
                super.onSizeChanged(i5, i6, i7, i8);
                float[] fArr = this.f1035r;
                float fDp = AndroidUtilities.dp(12.0f);
                fArr[3] = fDp;
                fArr[2] = fDp;
                fArr[1] = fDp;
                fArr[0] = fDp;
                this.path.rewind();
                this.path.addRoundRect(0.0f, 0.0f, i5, i6, this.f1035r, Path.Direction.CW);
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j4) {
                if (view == this.imageLayout) {
                    return true;
                }
                return super.drawChild(canvas, view, j4);
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.clipPath(this.path);
                super.dispatchDraw(canvas);
                canvas.restore();
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            public void updateButtonsBackgrounds(int i5) {
                super.updateButtonsBackgrounds(i5);
                AuctionWearingSheet.this.giftCell2.setRibbonColor(i5);
            }

            @Override // android.view.View
            public void invalidate() {
                super.invalidate();
                if (AuctionWearingSheet.this.giftCell2 != null) {
                    AuctionWearingSheet.this.giftCell2.invalidate();
                }
            }
        };
        this.topView = topView;
        topView.onSwitchPage(new StarGiftSheet.PageTransition(1, 1, 1.0f));
        topView.setPreviewingAttributes(arrayList);
        topView.hideCloseButton();
        frameLayout.addView(topView, 0, LayoutHelper.createFrame(-1, i4, 48));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(45.0f));
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(90, 90.0f, 49, 0.0f, 42.0f, 0.0f, 0.0f));
        if (j == 0) {
            TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
            avatarDrawable2 = new AvatarDrawable(user2);
            user = user2;
        } else {
            int i5 = this.currentAccount;
            if (j > 0) {
                TLRPC.User user3 = MessagesController.getInstance(i5).getUser(Long.valueOf(j));
                avatarDrawable2 = new AvatarDrawable(user3);
                user = user3;
            } else {
                j2 = j;
                TLRPC.Chat chat = MessagesController.getInstance(i5).getChat(Long.valueOf(-j2));
                avatarDrawable = new AvatarDrawable(chat);
                tLObject = chat;
                backupImageView.setForUserOrChat(tLObject, avatarDrawable);
                TextView textView = new TextView(context);
                this.giftNameTextView = textView;
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 21.0f);
                textView.setText(DialogObject.getShortName(j == 0 ? j2 : UserConfig.getInstance(this.currentAccount).getClientUserId()));
                textView.setGravity(17);
                textView.setTextColor(-1);
                textView.setPadding(0, 0, AndroidUtilities.dp(36.0f), 0);
                textView.setSingleLine();
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setMaxLines(1);
                frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 81, 16.0f, 0.0f, 16.0f, 40.0f));
                TextView textView2 = new TextView(context);
                textView2.setTextSize(1, 13.0f);
                textView2.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
                textView2.setGravity(17);
                textView2.setTextColor(-1342177281);
                if (!z) {
                    textView2.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfoOnline));
                    context2 = context;
                    resourcesProvider2 = resourcesProvider;
                } else {
                    textView2.setText(AndroidUtilities.replaceArrows(LocaleController.getString(C2573R.string.Gift2AuctionLearnMore3), false, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(1.0f)));
                    final long j4 = j2;
                    context2 = context;
                    resourcesProvider2 = resourcesProvider;
                    textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            new AuctionWearingSheet(context, resourcesProvider, j4, starGift, arrayList, null, true).show();
                        }
                    });
                    ScaleStateListAnimator.apply(textView2, 0.02f, 1.5f);
                }
                frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 87, 16.0f, 0.0f, 16.0f, 12.0f));
                LinearLayout linearLayout2 = new LinearLayout(context2);
                linearLayout2.setOrientation(0);
                linearLayout2.setGravity(17);
                linearLayout2.setClickable(true);
                GiftSheet.GiftCell giftCell = new GiftSheet.GiftCell(context2, this.currentAccount, resourcesProvider2) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.3
                    @Override // android.view.ViewGroup, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        return false;
                    }
                };
                giftCell.setPriorityAuction();
                final Theme.ResourcesProvider resourcesProvider3 = resourcesProvider2;
                giftCell.setStarsGift(starGift, true, false, false, false, false);
                giftCell.setImageSize(AndroidUtilities.dp(84.0f));
                giftCell.setImageLayer(7);
                giftCell.hidePrice();
                giftCell.cardBackground.setStrokeColors(null);
                giftCell.setRibbonTextOneOf(this.auction.gift.availability_total);
                linearLayout2.addView(giftCell, LayoutHelper.createLinear(116, 116, 0.0f));
                ImageView imageView = new ImageView(context);
                imageView.setImageResource(C2573R.drawable.ic_ab_back);
                imageView.setScaleX(-1.0f);
                imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.SRC_IN));
                linearLayout2.addView(imageView, LayoutHelper.createLinear(24, 24, 0.0f, 16, 12, 0, 12, 0));
                GiftSheet.GiftCell giftCell2 = new GiftSheet.GiftCell(context, this.currentAccount, resourcesProvider3) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.4
                    RectF rectF = new RectF();
                    RectF rectF2 = new RectF();
                    Path path = new Path();

                    @Override // android.view.ViewGroup, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        return false;
                    }

                    @Override // android.view.View
                    public void onSizeChanged(int i6, int i7, int i8, int i9) {
                        super.onSizeChanged(i6, i7, i8, i9);
                        this.path.rewind();
                        this.rectF.set(0.0f, 0.0f, i6, i7);
                        this.rectF.inset(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
                        this.path.addRoundRect(this.rectF, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(11.0f), Path.Direction.CW);
                    }

                    @Override // android.view.ViewGroup
                    public boolean drawChild(Canvas canvas, View view, long j5) {
                        boolean zDrawChild = super.drawChild(canvas, view, j5);
                        if (view == this.card) {
                            if (!ViewPositionWatcher.computeRectInParent(AuctionWearingSheet.this.topView.imageLayout, AuctionWearingSheet.this.headerContainer, this.rectF) || !ViewPositionWatcher.computeRectInParent(this.card, this, this.rectF2)) {
                                return true;
                            }
                            float fCenterX = this.rectF2.centerX() - AndroidUtilities.dp(40.0f);
                            float fCenterY = this.rectF2.centerY() - AndroidUtilities.dp(40.0f);
                            if (!this.rectF.isEmpty()) {
                                canvas.save();
                                canvas.clipPath(this.path);
                                canvas.scale(0.6f, 0.6f, this.rectF2.centerX(), this.rectF2.centerY());
                                canvas.translate(this.rectF2.centerX() - (AuctionWearingSheet.this.topView.getWidth() / 2.0f), this.rectF2.centerY() - (AuctionWearingSheet.this.topView.getHeight() / 2.0f));
                                AuctionWearingSheet.this.topView.drawBackground(canvas, AuctionWearingSheet.this.topView.getWidth() / 2.0f, AndroidUtilities.dp(104.0f), AuctionWearingSheet.this.topView.getWidth(), AuctionWearingSheet.this.topView.getHeight());
                                AuctionWearingSheet.this.topView.drawPattern(canvas, AuctionWearingSheet.this.topView.getWidth() / 2.0f, AndroidUtilities.dp(104.0f), AuctionWearingSheet.this.topView.getWidth(), AuctionWearingSheet.this.topView.getHeight());
                                canvas.restore();
                                canvas.save();
                                canvas.translate(fCenterX, fCenterY);
                                canvas.scale(AndroidUtilities.dp(80.0f) / this.rectF.width(), AndroidUtilities.dp(80.0f) / this.rectF.height());
                                AuctionWearingSheet.this.topView.imageLayout.draw(canvas);
                                canvas.restore();
                            }
                        }
                        return zDrawChild;
                    }
                };
                this.giftCell2 = giftCell2;
                giftCell2.removeImage();
                giftCell2.setPriorityAuction();
                giftCell2.setStarsGift(starGift, true, false, false, false, false);
                giftCell2.setImageSize(AndroidUtilities.dp(100.0f));
                giftCell2.setImageLayer(7);
                giftCell2.hidePrice();
                giftCell2.cardBackground.setStrokeColors(null);
                giftCell2.setRibbonTextOneOf(this.auction.gift.availability_total);
                giftCell2.setRibbonText(LocaleController.getString(C2573R.string.Gift2AuctionUpgradedShort));
                linearLayout2.addView(giftCell2, LayoutHelper.createLinear(116, 116, 0.0f));
                TextView textView3 = new TextView(context);
                textView3.setTextSize(1, 13.0f);
                textView3.setGravity(17);
                textView3.setText(LocaleController.getString(C2573R.string.Gift2WearingHint));
                int i6 = Theme.key_windowBackgroundWhiteGrayText;
                textView3.setTextColor(getThemedColor(i6));
                final float fClamp = Utilities.clamp(starGift.availability_remains / starGift.availability_total, 1.0f, 0.0f);
                FrameLayout frameLayout2 = new FrameLayout(context);
                int iDp = AndroidUtilities.dp(14.0f);
                int color = Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider3);
                int i7 = Theme.key_windowBackgroundWhiteBlackText;
                frameLayout2.setBackground(Theme.createRoundRectDrawable(iDp, ColorUtils.blendARGB(color, Theme.getColor(i7, resourcesProvider3), 0.2f)));
                TextView textView4 = new TextView(context);
                textView4.setTextSize(1, 13.0f);
                textView4.setGravity(19);
                textView4.setTypeface(AndroidUtilities.bold());
                textView4.setTextColor(Theme.getColor(i7, resourcesProvider3));
                textView4.setText(LocaleController.formatPluralStringComma("Gift2AvailabilityLeft", starGift.availability_remains));
                frameLayout2.addView(textView4, LayoutHelper.createFrame(-1, -1.0f, 3, 11.0f, 0.0f, 11.0f, 0.0f));
                TextView textView5 = new TextView(context);
                textView5.setTextSize(1, 13.0f);
                textView5.setGravity(21);
                textView5.setTypeface(AndroidUtilities.bold());
                textView5.setTextColor(Theme.getColor(i7, resourcesProvider3));
                textView5.setText(LocaleController.formatPluralStringComma("Gift2AvailabilitySold", starGift.availability_total - starGift.availability_remains));
                frameLayout2.addView(textView5, LayoutHelper.createFrame(-1, -1.0f, 5, 11.0f, 0.0f, 11.0f, 0.0f));
                View view = new View(context) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.5
                    @Override // android.view.View
                    public void onMeasure(int i8, int i9) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i8) * fClamp), TLObject.FLAG_30), i9);
                    }
                };
                view.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(14.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider3)));
                frameLayout2.addView(view, LayoutHelper.createFrame(-1, -1, 119));
                FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.6
                    @Override // android.view.ViewGroup, android.view.View
                    public void dispatchDraw(Canvas canvas) {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, getWidth() * fClamp, getHeight());
                        super.dispatchDraw(canvas);
                        canvas.restore();
                    }
                };
                frameLayout3.setWillNotDraw(false);
                frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-1, -1, 119));
                TextView textView6 = new TextView(context);
                textView6.setTextSize(1, 13.0f);
                textView6.setGravity(19);
                textView6.setTypeface(AndroidUtilities.bold());
                textView6.setTextColor(-1);
                textView6.setText(LocaleController.formatPluralStringComma("Gift2AvailabilityLeft", starGift.availability_remains));
                frameLayout3.addView(textView6, LayoutHelper.createFrame(-1, -1.0f, 3, 11.0f, 0.0f, 11.0f, 0.0f));
                TextView textView7 = new TextView(context);
                textView7.setTextSize(1, 13.0f);
                textView7.setGravity(21);
                textView7.setTypeface(AndroidUtilities.bold());
                textView7.setTextColor(-1);
                textView7.setText(LocaleController.formatPluralStringComma("Gift2AvailabilitySold", starGift.availability_total - starGift.availability_remains));
                frameLayout3.addView(textView7, LayoutHelper.createFrame(-1, -1.0f, 5, 11.0f, 0.0f, 11.0f, 0.0f));
                auction = this.auction;
                if (auction != null || auction.auctionStateActive == null) {
                    linksTextView = null;
                } else {
                    linksTextView = new LinkSpanDrawable.LinksTextView(context);
                    linksTextView.setTextSize(1, 13.0f);
                    linksTextView.setGravity(17);
                    linksTextView.setTextColor(getThemedColor(i6));
                    linksTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatSpannable(C2573R.string.Gift2AuctionInfo3, LocaleController.formatNumber(starGift.availability_total, ','), Integer.valueOf(this.auction.auctionStateActive.total_rounds), Integer.valueOf(starGift.gifts_per_round), AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.Gift2AuctionInfoLearnMore), new Runnable() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            AuctionJoinSheet.showMoreInfo(context, resourcesProvider3, starGift);
                        }
                    }), true, AndroidUtilities.dp(2.6666667f), AndroidUtilities.dp(1.0f)))));
                    linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, resourcesProvider3));
                }
                if (!z) {
                    showWearingMoreInfo(context, resourcesProvider3, linearLayout, starGift);
                    buttonWithCounterView.setText(StarGiftSheet.replaceUnderstood(LocaleController.getString(C2573R.string.Understood)), false);
                    buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$new$8(view2);
                        }
                    });
                    auctionWearingSheet = this;
                    z2 = false;
                } else {
                    linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 20.0f, 0.0f, 10.0f));
                    linearLayout.addView(textView3, LayoutHelper.createLinear(-1, -2, 40.0f, 0.0f, 40.0f, 15.0f));
                    linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, 28, 14.0f, 18.0f, 14.0f, 10.0f));
                    if (linksTextView != null) {
                        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 40.0f, 0.0f, 40.0f, 32.0f));
                    }
                    int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    GiftAuctionController.Auction auction2 = this.auction;
                    if (auction2 != null && auction2.isUpcoming(currentTime)) {
                        buttonWithCounterView.setText(LocaleController.getString(C2573R.string.Gift2AuctionPlaceAEarlyBid), false);
                    } else {
                        buttonWithCounterView.setText(LocaleController.getString(C2573R.string.Gift2AuctionPlaceABid), false);
                    }
                    GiftAuctionController.Auction auction3 = this.auction;
                    if (auction3 == null || auction3.auctionStateActive == null) {
                        z2 = false;
                    } else {
                        boolean zIsUpcoming = auction3.isUpcoming(currentTime);
                        GiftAuctionController.Auction auction4 = this.auction;
                        if (zIsUpcoming) {
                            z2 = false;
                            buttonWithCounterView.setSubText(LocaleController.formatString(C2573R.string.Gift2AuctionStartsIn, LocaleController.formatTTLString(auction4.auctionStateActive.start_date - currentTime)), false);
                        } else {
                            z2 = false;
                            buttonWithCounterView.setSubText(LocaleController.formatString(C2573R.string.Gift2AuctionTimeLeft, LocaleController.formatTTLString(auction4.auctionStateActive.end_date - currentTime)), false);
                        }
                    }
                    auctionWearingSheet = this;
                    buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$new$9(j, context, resourcesProvider3, runnable, view2);
                        }
                    });
                }
                auctionWearingSheet.updateTable(z2);
            }
        }
        avatarDrawable = avatarDrawable2;
        j2 = j;
        tLObject = user;
        backupImageView.setForUserOrChat(tLObject, avatarDrawable);
        TextView textView8 = new TextView(context);
        this.giftNameTextView = textView8;
        textView8.setTypeface(AndroidUtilities.bold());
        textView8.setTextSize(1, 21.0f);
        textView8.setText(DialogObject.getShortName(j == 0 ? j2 : UserConfig.getInstance(this.currentAccount).getClientUserId()));
        textView8.setGravity(17);
        textView8.setTextColor(-1);
        textView8.setPadding(0, 0, AndroidUtilities.dp(36.0f), 0);
        textView8.setSingleLine();
        textView8.setEllipsize(TextUtils.TruncateAt.END);
        textView8.setMaxLines(1);
        frameLayout.addView(textView8, LayoutHelper.createFrame(-2, -2.0f, 81, 16.0f, 0.0f, 16.0f, 40.0f));
        TextView textView22 = new TextView(context);
        textView22.setTextSize(1, 13.0f);
        textView22.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        textView22.setGravity(17);
        textView22.setTextColor(-1342177281);
        if (!z) {
        }
        frameLayout.addView(textView22, LayoutHelper.createFrame(-1, -2.0f, 87, 16.0f, 0.0f, 16.0f, 12.0f));
        LinearLayout linearLayout22 = new LinearLayout(context2);
        linearLayout22.setOrientation(0);
        linearLayout22.setGravity(17);
        linearLayout22.setClickable(true);
        GiftSheet.GiftCell giftCell3 = new GiftSheet.GiftCell(context2, this.currentAccount, resourcesProvider2) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.3
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }
        };
        giftCell3.setPriorityAuction();
        final Theme.ResourcesProvider resourcesProvider32 = resourcesProvider2;
        giftCell3.setStarsGift(starGift, true, false, false, false, false);
        giftCell3.setImageSize(AndroidUtilities.dp(84.0f));
        giftCell3.setImageLayer(7);
        giftCell3.hidePrice();
        giftCell3.cardBackground.setStrokeColors(null);
        giftCell3.setRibbonTextOneOf(this.auction.gift.availability_total);
        linearLayout22.addView(giftCell3, LayoutHelper.createLinear(116, 116, 0.0f));
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageResource(C2573R.drawable.ic_ab_back);
        imageView2.setScaleX(-1.0f);
        imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.SRC_IN));
        linearLayout22.addView(imageView2, LayoutHelper.createLinear(24, 24, 0.0f, 16, 12, 0, 12, 0));
        GiftSheet.GiftCell giftCell22 = new GiftSheet.GiftCell(context, this.currentAccount, resourcesProvider32) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.4
            RectF rectF = new RectF();
            RectF rectF2 = new RectF();
            Path path = new Path();

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.View
            public void onSizeChanged(int i62, int i72, int i8, int i9) {
                super.onSizeChanged(i62, i72, i8, i9);
                this.path.rewind();
                this.rectF.set(0.0f, 0.0f, i62, i72);
                this.rectF.inset(AndroidUtilities.dp(3.33f), AndroidUtilities.dp(4.0f));
                this.path.addRoundRect(this.rectF, AndroidUtilities.dp(11.0f), AndroidUtilities.dp(11.0f), Path.Direction.CW);
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view2, long j5) {
                boolean zDrawChild = super.drawChild(canvas, view2, j5);
                if (view2 == this.card) {
                    if (!ViewPositionWatcher.computeRectInParent(AuctionWearingSheet.this.topView.imageLayout, AuctionWearingSheet.this.headerContainer, this.rectF) || !ViewPositionWatcher.computeRectInParent(this.card, this, this.rectF2)) {
                        return true;
                    }
                    float fCenterX = this.rectF2.centerX() - AndroidUtilities.dp(40.0f);
                    float fCenterY = this.rectF2.centerY() - AndroidUtilities.dp(40.0f);
                    if (!this.rectF.isEmpty()) {
                        canvas.save();
                        canvas.clipPath(this.path);
                        canvas.scale(0.6f, 0.6f, this.rectF2.centerX(), this.rectF2.centerY());
                        canvas.translate(this.rectF2.centerX() - (AuctionWearingSheet.this.topView.getWidth() / 2.0f), this.rectF2.centerY() - (AuctionWearingSheet.this.topView.getHeight() / 2.0f));
                        AuctionWearingSheet.this.topView.drawBackground(canvas, AuctionWearingSheet.this.topView.getWidth() / 2.0f, AndroidUtilities.dp(104.0f), AuctionWearingSheet.this.topView.getWidth(), AuctionWearingSheet.this.topView.getHeight());
                        AuctionWearingSheet.this.topView.drawPattern(canvas, AuctionWearingSheet.this.topView.getWidth() / 2.0f, AndroidUtilities.dp(104.0f), AuctionWearingSheet.this.topView.getWidth(), AuctionWearingSheet.this.topView.getHeight());
                        canvas.restore();
                        canvas.save();
                        canvas.translate(fCenterX, fCenterY);
                        canvas.scale(AndroidUtilities.dp(80.0f) / this.rectF.width(), AndroidUtilities.dp(80.0f) / this.rectF.height());
                        AuctionWearingSheet.this.topView.imageLayout.draw(canvas);
                        canvas.restore();
                    }
                }
                return zDrawChild;
            }
        };
        this.giftCell2 = giftCell22;
        giftCell22.removeImage();
        giftCell22.setPriorityAuction();
        giftCell22.setStarsGift(starGift, true, false, false, false, false);
        giftCell22.setImageSize(AndroidUtilities.dp(100.0f));
        giftCell22.setImageLayer(7);
        giftCell22.hidePrice();
        giftCell22.cardBackground.setStrokeColors(null);
        giftCell22.setRibbonTextOneOf(this.auction.gift.availability_total);
        giftCell22.setRibbonText(LocaleController.getString(C2573R.string.Gift2AuctionUpgradedShort));
        linearLayout22.addView(giftCell22, LayoutHelper.createLinear(116, 116, 0.0f));
        TextView textView32 = new TextView(context);
        textView32.setTextSize(1, 13.0f);
        textView32.setGravity(17);
        textView32.setText(LocaleController.getString(C2573R.string.Gift2WearingHint));
        int i62 = Theme.key_windowBackgroundWhiteGrayText;
        textView32.setTextColor(getThemedColor(i62));
        final float fClamp2 = Utilities.clamp(starGift.availability_remains / starGift.availability_total, 1.0f, 0.0f);
        FrameLayout frameLayout22 = new FrameLayout(context);
        int iDp2 = AndroidUtilities.dp(14.0f);
        int color2 = Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider32);
        int i72 = Theme.key_windowBackgroundWhiteBlackText;
        frameLayout22.setBackground(Theme.createRoundRectDrawable(iDp2, ColorUtils.blendARGB(color2, Theme.getColor(i72, resourcesProvider32), 0.2f)));
        TextView textView42 = new TextView(context);
        textView42.setTextSize(1, 13.0f);
        textView42.setGravity(19);
        textView42.setTypeface(AndroidUtilities.bold());
        textView42.setTextColor(Theme.getColor(i72, resourcesProvider32));
        textView42.setText(LocaleController.formatPluralStringComma("Gift2AvailabilityLeft", starGift.availability_remains));
        frameLayout22.addView(textView42, LayoutHelper.createFrame(-1, -1.0f, 3, 11.0f, 0.0f, 11.0f, 0.0f));
        TextView textView52 = new TextView(context);
        textView52.setTextSize(1, 13.0f);
        textView52.setGravity(21);
        textView52.setTypeface(AndroidUtilities.bold());
        textView52.setTextColor(Theme.getColor(i72, resourcesProvider32));
        textView52.setText(LocaleController.formatPluralStringComma("Gift2AvailabilitySold", starGift.availability_total - starGift.availability_remains));
        frameLayout22.addView(textView52, LayoutHelper.createFrame(-1, -1.0f, 5, 11.0f, 0.0f, 11.0f, 0.0f));
        View view2 = new View(context) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.5
            @Override // android.view.View
            public void onMeasure(int i8, int i9) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) (View.MeasureSpec.getSize(i8) * fClamp2), TLObject.FLAG_30), i9);
            }
        };
        view2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(14.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider32)));
        frameLayout22.addView(view2, LayoutHelper.createFrame(-1, -1, 119));
        FrameLayout frameLayout32 = new FrameLayout(context) { // from class: org.telegram.ui.Gifts.AuctionWearingSheet.6
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.clipRect(0.0f, 0.0f, getWidth() * fClamp2, getHeight());
                super.dispatchDraw(canvas);
                canvas.restore();
            }
        };
        frameLayout32.setWillNotDraw(false);
        frameLayout22.addView(frameLayout32, LayoutHelper.createFrame(-1, -1, 119));
        TextView textView62 = new TextView(context);
        textView62.setTextSize(1, 13.0f);
        textView62.setGravity(19);
        textView62.setTypeface(AndroidUtilities.bold());
        textView62.setTextColor(-1);
        textView62.setText(LocaleController.formatPluralStringComma("Gift2AvailabilityLeft", starGift.availability_remains));
        frameLayout32.addView(textView62, LayoutHelper.createFrame(-1, -1.0f, 3, 11.0f, 0.0f, 11.0f, 0.0f));
        TextView textView72 = new TextView(context);
        textView72.setTextSize(1, 13.0f);
        textView72.setGravity(21);
        textView72.setTypeface(AndroidUtilities.bold());
        textView72.setTextColor(-1);
        textView72.setText(LocaleController.formatPluralStringComma("Gift2AvailabilitySold", starGift.availability_total - starGift.availability_remains));
        frameLayout32.addView(textView72, LayoutHelper.createFrame(-1, -1.0f, 5, 11.0f, 0.0f, 11.0f, 0.0f));
        auction = this.auction;
        if (auction != null) {
            linksTextView = null;
        }
        if (!z) {
        }
        auctionWearingSheet.updateTable(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(long j, Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable, View view) {
        AuctionBidSheet auctionBidSheet = new AuctionBidSheet(context, resourcesProvider, new AuctionBidSheet.Params(j, true, null), this.auction);
        auctionBidSheet.show();
        auctionBidSheet.setCloseParentSheet(runnable);
        lambda$new$0();
    }

    @Override // org.telegram.messenger.GiftAuctionController.OnAuctionUpdateListener
    public void onUpdate(GiftAuctionController.Auction auction) {
        this.auction = auction;
        updateTable(true);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        GiftAuctionController.getInstance(this.currentAccount).unsubscribeFromGiftAuction(this.giftId, this);
        super.lambda$new$0();
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Gifts.AuctionWearingSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(-1, this.linearLayout));
    }

    private int getBackgroundColor() {
        return ColorUtils.blendARGB(getThemedColor(Theme.key_dialogBackgroundGray), getThemedColor(Theme.key_dialogBackground), 0.1f);
    }

    private static void showWearingMoreInfo(Context context, Theme.ResourcesProvider resourcesProvider, LinearLayout linearLayout, TL_stars.StarGift starGift) {
        if (context == null || starGift == null) {
            return;
        }
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setText(LocaleController.formatString(C2573R.string.GiftAuctionWearInfoHeader, starGift.title));
        textView.setTextSize(1, 20.0f);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 20, 14, 20, 6));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfoText));
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 17, 20, 0, 20, 16));
        PremiumFeatureCell premiumFeatureCell = new PremiumFeatureCell(context, resourcesProvider);
        premiumFeatureCell.title.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfo1Header));
        premiumFeatureCell.description.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfo1Text));
        premiumFeatureCell.nextIcon.setVisibility(8);
        premiumFeatureCell.imageView.setImageResource(C2573R.drawable.msg_emoji_gem);
        premiumFeatureCell.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(premiumFeatureCell, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, -2.0f));
        PremiumFeatureCell premiumFeatureCell2 = new PremiumFeatureCell(context, resourcesProvider);
        premiumFeatureCell2.title.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfo2Header));
        premiumFeatureCell2.description.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfo2Text));
        premiumFeatureCell2.nextIcon.setVisibility(8);
        premiumFeatureCell2.imageView.setImageResource(C2573R.drawable.menu_feature_cover_24);
        premiumFeatureCell2.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(premiumFeatureCell2, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, -2.0f));
        PremiumFeatureCell premiumFeatureCell3 = new PremiumFeatureCell(context, resourcesProvider);
        premiumFeatureCell3.title.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfo3Header));
        premiumFeatureCell3.description.setText(LocaleController.getString(C2573R.string.GiftAuctionWearInfo3Text));
        premiumFeatureCell3.nextIcon.setVisibility(8);
        premiumFeatureCell3.imageView.setImageResource(C2573R.drawable.menu_verification);
        premiumFeatureCell3.imageView.setColorFilter(Theme.getColor(i, resourcesProvider));
        linearLayout.addView(premiumFeatureCell3, LayoutHelper.createLinear(-1, -2, 6.0f, 0.0f, 6.0f, 14.0f));
    }
}
