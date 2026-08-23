package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class TopicSeparator {
    private final Paint arrowPaint;
    private final Path arrowPath;
    private final ButtonBounce bounce;
    private final View cell;
    private final RectF clickBounds;
    private final int currentAccount;
    public AnimatedEmojiDrawable emojiImage;
    public final ImageReceiver image;
    private Runnable onClickListener;
    private int pathParentWidth;
    private int pathWidth;
    private boolean pathWithCenter;
    private boolean pathWithDots;
    private final Theme.ResourcesProvider resourcesProvider;
    public Text text;
    public long topicId;
    private final boolean withDots;
    public final AvatarDrawable avatarDrawable = new AvatarDrawable();
    private final Path path = new Path();

    public TopicSeparator(int i, View view, Theme.ResourcesProvider resourcesProvider, boolean z) {
        Paint paint = new Paint(1);
        this.arrowPaint = paint;
        Path path = new Path();
        this.arrowPath = path;
        this.clickBounds = new RectF();
        this.currentAccount = i;
        this.cell = view;
        this.resourcesProvider = resourcesProvider;
        this.withDots = z;
        this.bounce = new ButtonBounce(view);
        this.image = new ImageReceiver(view);
        path.rewind();
        path.moveTo(-AndroidUtilities.m1124dp(1.75f), -AndroidUtilities.m1124dp(4.0f));
        path.lineTo(AndroidUtilities.m1124dp(1.75f), 0.0f);
        path.lineTo(-AndroidUtilities.m1124dp(1.75f), AndroidUtilities.m1124dp(4.0f));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    public void setOnClickListener(Runnable runnable) {
        this.onClickListener = runnable;
    }

    public boolean update(MessageObject messageObject) {
        AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiImage;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this.cell);
            this.emojiImage = null;
        }
        this.pathWidth = 0;
        this.topicId = 0L;
        if (messageObject == null) {
            this.text = null;
            this.topicId = 0L;
        } else if (ChatObject.isMonoForum(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-messageObject.getDialogId())))) {
            this.image.setRoundRadius(AndroidUtilities.m1124dp(10.0f));
            long monoForumTopicId = messageObject.getMonoForumTopicId();
            TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(monoForumTopicId);
            this.topicId = monoForumTopicId;
            if (userOrChat == null) {
                this.text = null;
                return false;
            }
            this.avatarDrawable.setInfo(userOrChat);
            this.image.setForUserOrChat(userOrChat, this.avatarDrawable);
            this.text = new Text(DialogObject.getName(userOrChat), 14.0f, AndroidUtilities.bold());
        } else {
            this.image.setRoundRadius(0);
            long topicId = messageObject.getTopicId();
            this.topicId = topicId;
            TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-messageObject.getDialogId(), topicId);
            if (tL_forumTopicFindTopic == null) {
                this.text = null;
                return false;
            }
            if (topicId == 1) {
                this.image.setImageBitmap(ForumUtilities.createGeneralTopicDrawable(this.cell.getContext(), 0.75f, Theme.getColor(Theme.key_actionBarDefaultIcon, this.resourcesProvider), false, false));
            } else if (tL_forumTopicFindTopic.icon_emoji_id != 0) {
                this.emojiImage = new AnimatedEmojiDrawable(0, this.currentAccount, tL_forumTopicFindTopic.icon_emoji_id);
                this.image.onDetachedFromWindow();
                this.emojiImage.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            } else {
                this.image.setImageBitmap(ForumUtilities.createTopicDrawable(tL_forumTopicFindTopic, false));
            }
            this.text = new Text(tL_forumTopicFindTopic.title, 14.0f, AndroidUtilities.bold());
        }
        return this.text != null;
    }

    public void setText(String str) {
        this.text = new Text(str, 14.0f, AndroidUtilities.bold());
    }

    public void attach() {
        this.image.onAttachedToWindow();
        AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiImage;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.addView(this.cell);
        }
    }

    public void detach() {
        this.image.onDetachedFromWindow();
        AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiImage;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this.cell);
        }
    }

    public void draw(Canvas canvas, int i, float f, float f2, float f3, float f4, boolean z) {
        float f5;
        float f6;
        Text text = this.text;
        if (text == null) {
            return;
        }
        text.ellipsize(i - AndroidUtilities.m1124dp(144.66f));
        float fM1124dp = AndroidUtilities.m1124dp(48.66f) + this.text.getWidth();
        float f7 = i;
        float f8 = 2.0f;
        float f9 = (f7 - fM1124dp) / 2.0f;
        int i2 = (int) fM1124dp;
        if (this.pathWidth == i2 && this.pathParentWidth == i && this.pathWithCenter == z && this.pathWithDots == this.withDots) {
            f5 = fM1124dp;
            f6 = 2.0f;
        } else {
            this.path.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f9, AndroidUtilities.m1124dp(4.5f), f9 + fM1124dp, AndroidUtilities.m1124dp(28.5f));
            if (z) {
                this.path.addRoundRect(rectF, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), Path.Direction.CW);
            }
            if (this.withDots) {
                float f10 = f7 / 2.0f;
                float f11 = 1.833f;
                float fM1124dp2 = f10 - AndroidUtilities.m1124dp(1.833f);
                while (fM1124dp2 > 0.0f) {
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(fM1124dp2 - AndroidUtilities.m1124dp(3.66f), AndroidUtilities.m1124dp(15.5f), fM1124dp2, AndroidUtilities.m1124dp(17.5f));
                    this.path.addRoundRect(rectF2, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), Path.Direction.CW);
                    fM1124dp2 -= AndroidUtilities.m1124dp(8.33f);
                    f8 = f8;
                    f11 = f11;
                    fM1124dp = fM1124dp;
                }
                f5 = fM1124dp;
                f6 = f8;
                int iM1124dp = AndroidUtilities.m1124dp(f11);
                while (true) {
                    f10 += iM1124dp;
                    if (f10 >= f7) {
                        break;
                    }
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    rectF3.set(f10, AndroidUtilities.m1124dp(15.5f), AndroidUtilities.m1124dp(3.66f) + f10, AndroidUtilities.m1124dp(17.5f));
                    this.path.addRoundRect(rectF3, AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), Path.Direction.CW);
                    iM1124dp = AndroidUtilities.m1124dp(8.33f);
                }
            } else {
                f5 = fM1124dp;
                f6 = 2.0f;
            }
            this.pathWidth = i2;
            this.pathParentWidth = i;
            this.pathWithDots = this.withDots;
            this.pathWithCenter = z;
        }
        canvas.save();
        float f12 = f / f6;
        canvas.translate(f12, f2);
        Paint themePaint = Theme.getThemePaint("paintChatActionBackground", this.resourcesProvider);
        int alpha = themePaint.getAlpha();
        themePaint.setAlpha((int) (alpha * f4 * f3));
        canvas.drawPath(this.path, themePaint);
        themePaint.setAlpha(alpha);
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService()) {
            Paint themePaint2 = Theme.getThemePaint("paintChatActionBackgroundDarken", this.resourcesProvider);
            int alpha2 = themePaint2.getAlpha();
            themePaint2.setAlpha((int) (alpha2 * f4 * f3));
            canvas.drawPath(this.path, themePaint2);
            themePaint2.setAlpha(alpha2);
        }
        canvas.restore();
        float f13 = f12 + f9;
        float f14 = f13 + f5;
        this.clickBounds.set(f13 - AndroidUtilities.m1124dp(4.0f), f2 - AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f) + f14, AndroidUtilities.m1124dp(32.0f) + f2);
        if (z) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.emojiImage;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setBounds((int) (AndroidUtilities.m1124dp(2.66f) + f13), (int) (AndroidUtilities.m1124dp(6.5f) + f2), (int) (AndroidUtilities.m1124dp(22.66f) + f13), (int) (AndroidUtilities.m1124dp(26.5f) + f2));
                this.emojiImage.setAlpha((int) (255.0f * f4));
                this.emojiImage.draw(canvas);
            } else {
                this.image.setImageCoords(AndroidUtilities.m1124dp(2.66f) + f13, AndroidUtilities.m1124dp(6.5f) + f2, AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(20.0f));
                this.image.setAlpha(f4);
                this.image.draw(canvas);
            }
            int color = Theme.getColor(Theme.key_chat_serviceText, this.resourcesProvider);
            this.text.draw(canvas, f13 + AndroidUtilities.m1124dp(27.66f), AndroidUtilities.m1124dp(16.5f) + f2, color, f4);
            canvas.save();
            canvas.translate(f14 - AndroidUtilities.m1124dp(11.25f), AndroidUtilities.m1124dp(16.5f) + f2);
            this.arrowPaint.setColor(Theme.multAlpha(color, 0.75f * f4));
            this.arrowPaint.setStrokeWidth(AndroidUtilities.m1124dp(1.66f));
            canvas.drawPath(this.arrowPath, this.arrowPaint);
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent, boolean z) {
        boolean z2;
        Runnable runnable;
        if (this.text != null) {
            z2 = this.clickBounds.contains(motionEvent.getX(), motionEvent.getY() - ((float) (z ? this.cell.getPaddingTop() : 0)));
        }
        if (motionEvent.getAction() == 0) {
            this.bounce.setPressed(z2);
        } else if (motionEvent.getAction() == 2) {
            if (this.bounce.isPressed() && !z2) {
                this.bounce.setPressed(false);
            }
        } else if (motionEvent.getAction() == 1) {
            if (this.bounce.isPressed() && (runnable = this.onClickListener) != null) {
                runnable.run();
            }
            this.bounce.setPressed(false);
        } else if (motionEvent.getAction() == 3) {
            this.bounce.setPressed(false);
        }
        return this.bounce.isPressed();
    }

    public static class Cell extends View {
        private Utilities.Callback onClickListener;
        public final TopicSeparator separator;

        public Cell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            TopicSeparator topicSeparator = new TopicSeparator(i, this, resourcesProvider, false);
            this.separator = topicSeparator;
            topicSeparator.setOnClickListener(new Runnable() { // from class: org.telegram.ui.Components.TopicSeparator$Cell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            Utilities.Callback callback = this.onClickListener;
            if (callback != null) {
                callback.run(Long.valueOf(this.separator.topicId));
            }
        }

        public void setOnTopicClickListener(Utilities.Callback<Long> callback) {
            this.onClickListener = callback;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.separator.onTouchEvent(motionEvent, false) || super.onTouchEvent(motionEvent);
        }

        public void set(MessageObject messageObject) {
            this.separator.update(messageObject);
            if (isAttachedToWindow()) {
                this.separator.attach();
            }
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.separator.attach();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.separator.detach();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(33.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            this.separator.draw(canvas, getWidth(), 0.0f, 0.0f, 0.75f, 1.0f, true);
        }
    }
}
