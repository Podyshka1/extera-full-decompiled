package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatMessageSharedResources;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MessagePreviewView;
import org.telegram.ui.Components.MessagePrivateSeenView;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ReactionsContainerLayout;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScrimOptions;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.PollCreateActivity;

/* JADX INFO: loaded from: classes6.dex */
public class TodoItemMenu extends Dialog {
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private ChatMessageCell cell;
    private float clipBottom;
    private float clipTop;
    private FrameLayout containerView;
    public final Context context;
    private Runnable dismissListener;
    private boolean dismissing;
    private boolean dismissingWithAlpha;
    private float dtx1;
    private float dtx2;
    private float dty1;
    private float dty2;
    private boolean hasDestTranslation;
    private boolean hasTranslation;
    private float heightdiff;
    private TextView hintTextView;
    private final BlurredBackgroundDrawableViewFactory iBlur3Factory;
    private final BlurredBackgroundSourceBitmap iBlur3SourceBitmap;
    private Insets insets;
    private boolean isOut;
    private FrameLayout menuContainer;
    private MessageObject messageObject;
    private View messageOptionsView;
    private float messageOptionsViewMaxWidth;
    private ChatMessageCell myCell;
    private ChatMessageCell myTaskCell;
    private boolean open;
    private ValueAnimator open2Animator;
    private ValueAnimator openAnimator;
    private float openProgress;
    private float openProgress2;
    private ReactionsContainerLayout reactionsView;
    public final Theme.ResourcesProvider resourcesProvider;
    private boolean setCellInvisible;
    private boolean setTaskInvisible;
    private MessagePreviewView.TabsView tabsView;
    private int taskId;
    private View taskOptionsView;
    private float taskOptionsViewMaxWidth;
    private float tx;
    private float ty;
    private ViewPagerFixed viewPager;
    private FrameLayout windowView;

    public TodoItemMenu(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, C2665R.style.TransparentDialog);
        this.insets = Insets.NONE;
        this.clipTop = 0.0f;
        this.clipBottom = 0.0f;
        this.taskOptionsViewMaxWidth = -1.0f;
        this.messageOptionsViewMaxWidth = -1.0f;
        this.dismissing = false;
        this.context = context;
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.TodoItemMenu.1
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (TodoItemMenu.this.openProgress <= 0.0f || TodoItemMenu.this.blurBitmapPaint == null) {
                    canvas2 = canvas;
                } else {
                    TodoItemMenu.this.blurMatrix.reset();
                    float width = getWidth() / TodoItemMenu.this.blurBitmap.getWidth();
                    TodoItemMenu.this.blurMatrix.postScale(width, width);
                    TodoItemMenu.this.blurBitmapShader.setLocalMatrix(TodoItemMenu.this.blurMatrix);
                    TodoItemMenu.this.blurBitmapPaint.setAlpha((int) (TodoItemMenu.this.openProgress * 255.0f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, getWidth(), getHeight(), TodoItemMenu.this.blurBitmapPaint);
                }
                if (TodoItemMenu.this.setCellInvisible && TodoItemMenu.this.cell != null) {
                    TodoItemMenu.this.cell.setVisibility(4);
                    TodoItemMenu.this.setCellInvisible = false;
                }
                if (TodoItemMenu.this.setTaskInvisible && TodoItemMenu.this.cell != null) {
                    TodoItemMenu.this.cell.doNotDrawTaskId = TodoItemMenu.this.taskId;
                    TodoItemMenu.this.cell.invalidate();
                    TodoItemMenu.this.setTaskInvisible = false;
                }
                super.dispatchDraw(canvas2);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
                if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    TodoItemMenu.this.dismiss();
                    return true;
                }
                return super.dispatchKeyEventPreIme(keyEvent);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                TodoItemMenu.this.setupTranslation();
            }

            @Override // android.view.View
            public void onSizeChanged(int i, int i2, int i3, int i4) {
                super.onSizeChanged(i, i2, i3, i4);
                TodoItemMenu.this.checkBitmapMatrix();
            }
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        BlurredBackgroundSourceBitmap blurredBackgroundSourceBitmap = new BlurredBackgroundSourceBitmap();
        this.iBlur3SourceBitmap = blurredBackgroundSourceBitmap;
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceBitmap);
        this.iBlur3Factory = blurredBackgroundDrawableViewFactory;
        blurredBackgroundDrawableViewFactory.setSourceRootView(new ViewPositionWatcher(this.windowView), this.windowView);
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.TodoItemMenu.2
            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view == TodoItemMenu.this.myCell || view == TodoItemMenu.this.myTaskCell) {
                    canvas.save();
                    canvas.clipRect(0.0f, AndroidUtilities.lerp(TodoItemMenu.this.clipTop, 0.0f, TodoItemMenu.this.openProgress), getWidth(), AndroidUtilities.lerp(TodoItemMenu.this.clipBottom, getHeight(), TodoItemMenu.this.openProgress));
                    boolean zDrawChild = super.drawChild(canvas, view, j);
                    canvas.restore();
                    return zDrawChild;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.containerView = frameLayout2;
        frameLayout2.setClipToPadding(false);
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 119));
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context) { // from class: org.telegram.ui.TodoItemMenu.3
            @Override // org.telegram.ui.Components.ViewPagerFixed
            public void onTabAnimationUpdate(boolean z) {
                TodoItemMenu.this.updateTranslation();
            }
        };
        this.viewPager = viewPagerFixed;
        viewPagerFixed.setAdapter(new C61954(context));
        this.containerView.addView(this.viewPager, LayoutHelper.createFrame(-1, -1, 119));
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.TodoItemMenu.5
            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                TodoItemMenu.this.updateTranslation();
                for (int i3 = 0; i3 < getChildCount(); i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt == TodoItemMenu.this.messageOptionsView && TodoItemMenu.this.messageOptionsViewMaxWidth > 0.0f) {
                        TodoItemMenu.this.messageOptionsView.measure(View.MeasureSpec.makeMeasureSpec(Math.min(size, (int) TodoItemMenu.this.messageOptionsViewMaxWidth), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                    } else if (childAt == TodoItemMenu.this.taskOptionsView && TodoItemMenu.this.taskOptionsViewMaxWidth > 0.0f) {
                        TodoItemMenu.this.taskOptionsView.measure(View.MeasureSpec.makeMeasureSpec(Math.min(size, (int) TodoItemMenu.this.taskOptionsViewMaxWidth), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                    } else if (childAt == TodoItemMenu.this.reactionsView) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(TodoItemMenu.this.reactionsView.getTotalWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                    } else {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                    }
                }
                setMeasuredDimension(size, size2);
            }
        };
        this.menuContainer = frameLayout3;
        this.containerView.addView(frameLayout3, LayoutHelper.createFrame(-1, -1, 119));
        MessagePreviewView.TabsView tabsView = new MessagePreviewView.TabsView(context, resourcesProvider);
        this.tabsView = tabsView;
        tabsView.addTab(0, LocaleController.getString(C2665R.string.TodoMenuTabTask));
        this.tabsView.addTab(1, LocaleController.getString(C2665R.string.TodoMenuTabList));
        this.containerView.addView(this.tabsView, LayoutHelper.createFrame(-1, 66, 80));
        MessagePreviewView.TabsView tabsView2 = this.tabsView;
        ViewPagerFixed viewPagerFixed2 = this.viewPager;
        Objects.requireNonNull(viewPagerFixed2);
        tabsView2.setOnTabClick(new PollItemMenu$$ExternalSyntheticLambda14(viewPagerFixed2));
        MessagePreviewView.TabsView tabsView3 = this.tabsView;
        tabsView3.setBackground(blurredBackgroundDrawableViewFactory.create(tabsView3).setColorProvider(BlurredBackgroundProviderImpl.scrimMenuBackground(resourcesProvider)).setHasPadding(true).setPadding(AndroidUtilities.dp(8.0f)).setRadius(AndroidUtilities.dp(16.0f)));
        TextView textView = new TextView(context);
        this.hintTextView = textView;
        textView.setTextSize(1, 13.0f);
        this.hintTextView.setTextColor(this.tabsView.getColor());
        this.hintTextView.setText(LocaleController.getString(C2665R.string.TodoMenuHint));
        this.hintTextView.setGravity(17);
        this.containerView.addView(this.hintTextView, LayoutHelper.createFrame(-1, -2.0f, 80, 0.0f, 0.0f, 0.0f, 66.0f));
        ViewCompat.setOnApplyWindowInsetsListener(this.windowView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.TodoItemMenu.6
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                TodoItemMenu.this.insets = windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars());
                TodoItemMenu.this.containerView.setPadding(TodoItemMenu.this.insets.left, TodoItemMenu.this.insets.top, TodoItemMenu.this.insets.right, TodoItemMenu.this.insets.bottom);
                TodoItemMenu.this.windowView.requestLayout();
                return WindowInsetsCompat.CONSUMED;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
    }

    /* JADX INFO: renamed from: org.telegram.ui.TodoItemMenu$4 */
    public class C61954 extends ViewPagerFixed.Adapter {
        final /* synthetic */ Context val$context;

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public void bindView(View view, int i, int i2) {
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public int getItemCount() {
            return 2;
        }

        public C61954(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public View createView(int i) {
            FrameLayout frameLayout = new FrameLayout(this.val$context);
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TodoItemMenu$4$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$0(view);
                }
            });
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createView$0(View view) {
            TodoItemMenu.this.dismiss(true);
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setWindowAnimations(C2665R.style.DialogNoAnimation);
        setContentView(this.windowView, new ViewGroup.LayoutParams(-1, -1));
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.gravity = 119;
        attributes.dimAmount = 0.0f;
        int i = attributes.flags & (-3);
        attributes.softInputMode = 48;
        attributes.flags = i | (-1945959040);
        AndroidUtilities.applyEdgeToEdgeLayoutParams(attributes);
        window.setAttributes(attributes);
        this.windowView.setSystemUiVisibility(1284);
        AndroidUtilities.setLightNavigationBar(this.windowView, !Theme.isCurrentThemeDark());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBitmapMatrix() {
        Blur3Utils.checkBitmapSourceMatrixScale(this.iBlur3SourceBitmap, this.windowView);
        this.iBlur3Factory.invalidateAllLinkedViews();
    }

    public void setCell(final ChatActivity chatActivity, ChatMessageCell chatMessageCell, final int i) {
        final int i2;
        final TLRPC.TodoItem todoItem;
        this.cell = chatMessageCell;
        this.taskId = i;
        TLRPC.TodoCompletion todoCompletion = null;
        MessageObject messageObject = chatMessageCell != null ? chatMessageCell.getMessageObject() : null;
        this.messageObject = messageObject;
        this.isOut = messageObject != null && messageObject.isOutOwner();
        if (this.cell != null) {
            this.clipTop = chatActivity.getChatListViewPadding() - AndroidUtilities.dp(4.0f);
            this.clipBottom = chatMessageCell.parentBoundsBottom;
            if (chatMessageCell.getParent() instanceof View) {
                View view = (View) chatMessageCell.getParent();
                this.clipTop += view.getY();
                this.clipBottom += view.getY();
            }
            final int width = this.cell.getWidth();
            final int height = this.cell.getHeight();
            this.heightdiff = height - this.cell.getHeight();
            ChatMessageSharedResources chatMessageSharedResources = null;
            ChatMessageCell chatMessageCell2 = new ChatMessageCell(getContext(), UserConfig.selectedAccount, false, chatMessageSharedResources, this.cell.getResourcesProvider()) { // from class: org.telegram.ui.TodoItemMenu.7
                private final Path clipPath = new Path();
                private final Paint shadowPaint = new Paint(1);

                @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                public void setPressed(boolean z) {
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                public void onDraw(Canvas canvas) {
                    canvas.save();
                    int todoIndex = getTodoIndex(i);
                    float pollButtonTop = getPollButtonTop(todoIndex);
                    float pollButtonBottom = getPollButtonBottom(todoIndex);
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(getPollButtonsLeft(), pollButtonTop, getPollButtonsRight(), pollButtonBottom);
                    this.clipPath.rewind();
                    this.clipPath.addRoundRect(rectF, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                    this.shadowPaint.setColor(0);
                    this.shadowPaint.setShadowLayer(AndroidUtilities.dp(2.0f), 0.0f, AndroidUtilities.dp(0.66f), Theme.multAlpha(-16777216, TodoItemMenu.this.openProgress * 0.2f));
                    canvas.drawRoundRect(rectF, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), this.shadowPaint);
                    canvas.clipPath(this.clipPath);
                    super.onDraw(canvas);
                    canvas.restore();
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                public void onMeasure(int i3, int i4) {
                    setMeasuredDimension(width, height);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell
                public void drawOverlays(Canvas canvas) {
                    this.firstVisiblePollButton = 0;
                    this.lastVisiblePollButton = this.pollButtons.size() - 1;
                    super.drawOverlays(canvas);
                }
            };
            i2 = i;
            this.myTaskCell = chatMessageCell2;
            this.cell.copyParamsTo(chatMessageCell2);
            this.myTaskCell.copySpoilerEffect2AttachIndexFrom(this.cell);
            this.myTaskCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.TodoItemMenu.8
                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean canPerformActions() {
                    return false;
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean didPressToDoButton(ChatMessageCell chatMessageCell3, TLRPC.TodoItem todoItem2, boolean z) {
                    if (TodoItemMenu.this.cell.getDelegate() != null) {
                        return TodoItemMenu.this.cell.getDelegate().didPressToDoButton(TodoItemMenu.this.cell, todoItem2, z);
                    }
                    return false;
                }
            });
            ChatMessageCell chatMessageCell3 = this.myTaskCell;
            MessageObject messageObject2 = this.messageObject;
            MessageObject.GroupedMessages currentMessagesGroup = this.cell.getCurrentMessagesGroup();
            ChatMessageCell chatMessageCell4 = this.cell;
            chatMessageCell3.setMessageObject(messageObject2, currentMessagesGroup, chatMessageCell4.pinnedBottom, chatMessageCell4.pinnedTop, chatMessageCell4.firstInChat);
            this.containerView.addView(this.myTaskCell, new FrameLayout.LayoutParams(this.cell.getWidth(), height, 51));
            ChatMessageCell chatMessageCell5 = new ChatMessageCell(getContext(), UserConfig.selectedAccount, false, chatMessageSharedResources, this.cell.getResourcesProvider()) { // from class: org.telegram.ui.TodoItemMenu.9
                @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                public void setPressed(boolean z) {
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                public void onMeasure(int i3, int i4) {
                    setMeasuredDimension(width, height);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell
                public void drawOverlays(Canvas canvas) {
                    this.firstVisiblePollButton = 0;
                    this.lastVisiblePollButton = this.pollButtons.size() - 1;
                    super.drawOverlays(canvas);
                }
            };
            this.myCell = chatMessageCell5;
            this.cell.copyVisiblePartTo(chatMessageCell5);
            this.cell.copyParamsTo(this.myCell);
            this.myCell.copySpoilerEffect2AttachIndexFrom(this.cell);
            this.myCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.TodoItemMenu.10
                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean canPerformActions() {
                    return false;
                }
            });
            ChatMessageCell chatMessageCell6 = this.myCell;
            MessageObject messageObject3 = this.messageObject;
            MessageObject.GroupedMessages currentMessagesGroup2 = this.cell.getCurrentMessagesGroup();
            ChatMessageCell chatMessageCell7 = this.cell;
            chatMessageCell6.setMessageObject(messageObject3, currentMessagesGroup2, chatMessageCell7.pinnedBottom, chatMessageCell7.pinnedTop, chatMessageCell7.firstInChat);
            this.containerView.addView(this.myCell, new FrameLayout.LayoutParams(this.cell.getWidth(), height, 51));
        } else {
            i2 = i;
        }
        this.viewPager.bringToFront();
        this.menuContainer.bringToFront();
        this.tabsView.bringToFront();
        this.viewPager.onTabAnimationUpdate(false);
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.containerView, this.resourcesProvider, (View) null);
        final TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) MessageObject.getMedia(this.messageObject);
        final int i3 = 0;
        while (true) {
            if (i3 >= tL_messageMediaToDo.todo.list.size()) {
                i3 = -1;
                todoItem = null;
                break;
            } else {
                if (tL_messageMediaToDo.todo.list.get(i3).id == i2) {
                    todoItem = tL_messageMediaToDo.todo.list.get(i3);
                    break;
                }
                i3++;
            }
        }
        int i4 = 0;
        while (true) {
            if (i4 >= tL_messageMediaToDo.completions.size()) {
                break;
            }
            if (tL_messageMediaToDo.completions.get(i4).id == i2) {
                todoCompletion = tL_messageMediaToDo.completions.get(i4);
                break;
            }
            i4++;
        }
        if (this.messageObject.canCompleteTodo()) {
            if (todoCompletion != null) {
                itemOptionsMakeOptions.addText(LocaleController.formatTodoCompletedDate(todoCompletion.date), 14);
                itemOptionsMakeOptions.addGap();
                itemOptionsMakeOptions.add(C2665R.drawable.msg_cancel, LocaleController.getString(C2665R.string.TodoUncheck), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCell$1(chatActivity, i2);
                    }
                });
            } else {
                itemOptionsMakeOptions.add(C2665R.drawable.msg_select, LocaleController.getString(C2665R.string.TodoCheck), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCell$2(chatActivity, i2);
                    }
                });
            }
        }
        if (todoItem != null) {
            if (chatActivity != null) {
                itemOptionsMakeOptions.add(C2665R.drawable.menu_reply, LocaleController.getString(C2665R.string.TodoItemQuote), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCell$3(chatActivity, todoItem);
                    }
                });
            }
            if (this.messageObject.getDialogId() < 0) {
                MessagesController messagesController = MessagesController.getInstance(this.messageObject.currentAccount);
                String publicUsername = DialogObject.getPublicUsername(messagesController.getUserOrChat(this.messageObject.getDialogId()));
                StringBuilder sb = new StringBuilder("https://");
                sb.append(messagesController.linkPrefix);
                sb.append("/");
                if (TextUtils.isEmpty(publicUsername)) {
                    publicUsername = "c/" + (-this.messageObject.getDialogId());
                }
                sb.append(publicUsername);
                sb.append("/");
                sb.append(this.messageObject.getId());
                sb.append("?task=");
                sb.append(todoItem.id);
                final String string = sb.toString();
                itemOptionsMakeOptions.add(C2665R.drawable.msg_link, LocaleController.getString(C2665R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCell$4(string);
                    }
                });
            }
            itemOptionsMakeOptions.add(C2665R.drawable.msg_copy, LocaleController.getString(C2665R.string.Copy), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setCell$5(todoItem);
                }
            });
        }
        if (this.messageObject.canEditMessage(chatActivity.currentChat)) {
            itemOptionsMakeOptions.add(C2665R.drawable.msg_edit, LocaleController.getString(C2665R.string.TodoEditItem), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setCell$7(chatActivity, i3);
                }
            });
            if (tL_messageMediaToDo.todo.list.size() > 1) {
                itemOptionsMakeOptions.add(C2665R.drawable.msg_delete, LocaleController.getString(C2665R.string.TodoDeleteItem), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCell$8(tL_messageMediaToDo, i2, chatActivity);
                    }
                });
            }
        }
        itemOptionsMakeOptions.setGapBackgroundColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider), 0.06f));
        itemOptionsMakeOptions.setBlurBackground(this.iBlur3Factory, BlurredBackgroundProviderImpl.scrimMenuBackground(this.resourcesProvider), false);
        itemOptionsMakeOptions.setupSelectors();
        ViewGroup layout = itemOptionsMakeOptions.getLayout();
        this.taskOptionsView = layout;
        layout.setPivotX(0.0f);
        this.taskOptionsView.setPivotY(0.0f);
        this.menuContainer.addView(this.taskOptionsView, LayoutHelper.createFrame(-2, -2, 51));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$1(ChatActivity chatActivity, int i) {
        if (chatActivity.isInScheduleMode()) {
            Toast.makeText(getContext(), LocaleController.getString(C2665R.string.MessageScheduledTodo), 1).show();
        } else {
            ChatMessageCell chatMessageCell = this.myTaskCell;
            chatMessageCell.toggleTodoCheck(chatMessageCell.getTodoIndex(i), false);
        }
        dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$2(ChatActivity chatActivity, int i) {
        if (chatActivity.isInScheduleMode()) {
            Toast.makeText(getContext(), LocaleController.getString(C2665R.string.MessageScheduledTodo), 1).show();
        } else {
            ChatMessageCell chatMessageCell = this.myTaskCell;
            chatMessageCell.toggleTodoCheck(chatMessageCell.getTodoIndex(i), false);
        }
        dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$3(ChatActivity chatActivity, TLRPC.TodoItem todoItem) {
        MessageObject messageObject = this.messageObject;
        chatActivity.showFieldPanelForReplyQuote(messageObject, ChatActivity.ReplyQuote.from(messageObject, todoItem.id));
        dismiss(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$4(String str) {
        AndroidUtilities.addToClipboard(str);
        dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$5(TLRPC.TodoItem todoItem) {
        AndroidUtilities.addToClipboard(MessageObject.formatTextWithEntities(todoItem.title, false));
        dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$7(final ChatActivity chatActivity, int i) {
        PollCreateActivity pollCreateActivity = new PollCreateActivity(chatActivity, true, Boolean.FALSE);
        pollCreateActivity.setEditing(MessageObject.getMedia(this.messageObject), false, i);
        pollCreateActivity.setDelegate(new PollCreateActivity.PollCreateActivityDelegate() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda18
            @Override // org.telegram.ui.PollCreateActivity.PollCreateActivityDelegate
            public final void sendPoll(TLRPC.MessageMedia messageMedia, ArrayList arrayList, boolean z, int i2) {
                this.f$0.lambda$setCell$6(chatActivity, messageMedia, arrayList, z, i2);
            }
        });
        chatActivity.presentFragment(pollCreateActivity);
        dismiss(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$6(ChatActivity chatActivity, TLRPC.MessageMedia messageMedia, ArrayList arrayList, boolean z, int i) {
        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
            TLRPC.MessageMedia messageMedia2 = this.messageObject.messageOwner.media;
            if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                ((TLRPC.TL_messageMediaToDo) messageMedia).completions = ((TLRPC.TL_messageMediaToDo) messageMedia2).completions;
            }
        }
        this.messageObject.messageOwner.media = messageMedia;
        chatActivity.getSendMessagesHelper().editMessage(this.messageObject, null, null, null, null, null, null, false, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCell$8(TLRPC.TL_messageMediaToDo tL_messageMediaToDo, int i, ChatActivity chatActivity) {
        int i2 = 0;
        while (i2 < tL_messageMediaToDo.todo.list.size()) {
            if (tL_messageMediaToDo.todo.list.get(i2).id == i) {
                tL_messageMediaToDo.todo.list.remove(i2);
                i2--;
            }
            i2++;
        }
        int i3 = 0;
        while (i3 < tL_messageMediaToDo.completions.size()) {
            if (tL_messageMediaToDo.completions.get(i3).id == i) {
                tL_messageMediaToDo.completions.remove(i3);
                if (tL_messageMediaToDo.completions.isEmpty()) {
                    tL_messageMediaToDo.flags &= -2;
                }
                i3--;
            }
            i3++;
        }
        this.messageObject.messageOwner.media = tL_messageMediaToDo;
        chatActivity.getSendMessagesHelper().editMessage(this.messageObject, null, null, null, null, null, null, false, false, null);
        chatActivity.updateVisibleRows();
        dismiss(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03ca A[LOOP:0: B:223:0x03c8->B:224:0x03ca, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0450  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setupMessageOptions(final ChatActivity chatActivity, ArrayList<Integer> arrayList, ArrayList<CharSequence> arrayList2, ArrayList<Integer> arrayList3, final Utilities.Callback<Integer> callback) {
        TLRPC.ChatFull chatFull;
        boolean z;
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        int i;
        ItemOptions itemOptions;
        int i2;
        final TodoItemMenu todoItemMenu;
        MessageObject messageObject;
        final MessageObject messageObject2;
        int size;
        int i3;
        View view;
        TLRPC.User user;
        TLRPC.UserFull userFull;
        TLRPC.ChatFull chatFull2;
        TLRPC.ChatFull chatFull3;
        MessageObject messageObject3 = this.messageObject;
        List<TLRPC.TL_availableReaction> enabledReactionsList = chatActivity.getMediaDataController().getEnabledReactionsList();
        boolean z2 = (chatActivity.isSecretChat() || chatActivity.isInScheduleMode() || chatActivity.currentUser != null || !messageObject3.hasReactions() || (ChatObject.isChannel(chatActivity.currentChat) && !chatActivity.currentChat.megagroup) || ChatObject.isMonoForum(chatActivity.currentChat) || enabledReactionsList.isEmpty() || !messageObject3.messageOwner.reactions.can_see_list || messageObject3.isSecretMedia()) ? false : true;
        boolean z3 = !messageObject3.isForwardedChannelPost() ? messageObject3.isSecretMedia() || chatActivity.getChatMode() == 5 || chatActivity.isSecretChat() || chatActivity.isInScheduleMode() || !messageObject3.isReactionsAvailable() || ((((chatFull = chatActivity.chatInfo) == null || ((chatFull.available_reactions instanceof TLRPC.TL_chatReactionsNone) && !chatFull.paid_reactions_available)) && ((chatFull != null || ChatObject.isChannel(chatActivity.currentChat)) && chatActivity.currentUser == null && !ChatObject.isMonoForum(chatActivity.currentChat))) || enabledReactionsList.isEmpty()) : (chatFull3 = chatActivity.getMessagesController().getChatFull(-messageObject3.getFromChatId())) != null && (chatActivity.isSecretChat() || chatActivity.getChatMode() == 5 || chatActivity.isInScheduleMode() || !messageObject3.isReactionsAvailable() || (((chatFull3.available_reactions instanceof TLRPC.TL_chatReactionsNone) && !chatFull3.paid_reactions_available) || enabledReactionsList.isEmpty()));
        boolean z4 = (z2 || chatActivity.isInScheduleMode() || chatActivity.currentChat == null || !messageObject3.isOutOwner() || !messageObject3.isSent() || messageObject3.isEditing() || messageObject3.isSending() || messageObject3.isSendError() || messageObject3.isContentUnread() || messageObject3.isUnread() || ConnectionsManager.getInstance(chatActivity.getCurrentAccount()).getCurrentTime() - messageObject3.messageOwner.date >= chatActivity.getMessagesController().chatReadMarkExpirePeriod || (!ChatObject.isMegagroup(chatActivity.currentChat) && ChatObject.isChannel(chatActivity.currentChat)) || (chatFull2 = chatActivity.chatInfo) == null || chatFull2.participants_count > chatActivity.getMessagesController().chatReadMarkSizeThreshold || (messageObject3.messageOwner.action instanceof TLRPC.TL_messageActionChatJoinedByRequest) || chatActivity.getChatMode() == 3 || !messageObject3.canSetReaction() || ChatObject.isMonoForum(chatActivity.currentChat)) ? false : true;
        if (chatActivity.currentChat != null && !messageObject3.isOut() && ChatObject.isMonoForum(chatActivity.currentChat) && ChatObject.canManageMonoForum(chatActivity.getCurrentAccount(), chatActivity.currentChat)) {
            int i4 = ((-chatActivity.currentChat.linked_monoforum_id) > messageObject3.getFromChatId() ? 1 : ((-chatActivity.currentChat.linked_monoforum_id) == messageObject3.getFromChatId() ? 0 : -1));
        }
        if (z2 || chatActivity.currentChat != null || chatActivity.currentEncryptedChat != null || (user = chatActivity.currentUser) == null || UserObject.isUserSelf(user) || UserObject.isReplyUser(chatActivity.currentUser) || UserObject.isAnonymous(chatActivity.currentUser)) {
            z = false;
        } else {
            TLRPC.User user2 = chatActivity.currentUser;
            if (!user2.bot && !UserObject.isService(user2.id) && (((userFull = chatActivity.userInfo) == null || !userFull.read_dates_private) && !chatActivity.isInScheduleMode() && messageObject3.isOutOwner() && messageObject3.isSent() && !messageObject3.isEditing() && !messageObject3.isSending() && !messageObject3.isSendError() && !messageObject3.isContentUnread() && !messageObject3.isUnread() && chatActivity.getConnectionsManager().getCurrentTime() - messageObject3.messageOwner.date < chatActivity.getMessagesController().pmReadDateExpirePeriod && !(messageObject3.messageOwner.action instanceof TLRPC.TL_messageActionChatJoinedByRequest))) {
                z = true;
            }
        }
        TLRPC.User user3 = chatActivity.currentUser;
        boolean z5 = (user3 == null || !(UserObject.isReplyUser(user3) || UserObject.isAnonymous(chatActivity.currentUser))) && !chatActivity.isInScheduleMode() && messageObject3.isEdited() && !(messageObject3.messageOwner.action instanceof TLRPC.TL_messageActionChatJoinedByRequest);
        TLRPC.User user4 = chatActivity.currentUser;
        boolean z6 = (user4 == null || !(UserObject.isReplyUser(user4) || UserObject.isAnonymous(chatActivity.currentUser))) && !chatActivity.isInScheduleMode() && messageObject3.needDrawForwarded() && (messageFwdHeader = (message = messageObject3.messageOwner).fwd_from) != null && messageFwdHeader.date > 0 && !(message.action instanceof TLRPC.TL_messageActionChatJoinedByRequest);
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.containerView, chatActivity.getResourceProvider(), (View) null, z2 || z4);
        if (z4) {
            final MessageSeenView messageSeenView = new MessageSeenView(getContext(), chatActivity.getCurrentAccount(), messageObject3, chatActivity.currentChat);
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.addView(messageSeenView, LayoutHelper.createFrame(-1, 36.0f));
            final ItemOptions itemOptionsMakeSwipeback = itemOptionsMakeOptions.makeSwipeback();
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, false, this.resourcesProvider);
            actionBarMenuSubItem.setItemHeight(44);
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2665R.string.Back), C2665R.drawable.msg_arrow_back);
            actionBarMenuSubItem.getTextView().setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.dp(40.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(40.0f) : 0, 0);
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            final LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, this.resourcesProvider));
            linearLayout.setOrientation(1);
            final RecyclerListView recyclerListViewCreateListView = messageSeenView.createListView();
            frameLayout2.addView(actionBarMenuSubItem);
            linearLayout.addView(frameLayout2);
            i = -1;
            linearLayout.addView(new ActionBarPopupWindow.GapView(getContext(), this.resourcesProvider), LayoutHelper.createLinear(-1, 8));
            frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TodoItemMenu.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Bulletin.hideVisible();
                    itemOptionsMakeOptions.closeSwipeback();
                }
            });
            i2 = -2;
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.TodoItemMenu.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (messageSeenView.users.isEmpty()) {
                        return;
                    }
                    if (messageSeenView.users.size() == 1 && (messageSeenView.dates.size() <= 0 || messageSeenView.dates.get(0).intValue() <= 0)) {
                        TLObject tLObject = messageSeenView.users.get(0);
                        if (tLObject == null) {
                            return;
                        }
                        Bundle bundle = new Bundle();
                        if (tLObject instanceof TLRPC.User) {
                            bundle.putLong("user_id", ((TLRPC.User) tLObject).id);
                        } else if (tLObject instanceof TLRPC.Chat) {
                            bundle.putLong("chat_id", ((TLRPC.Chat) tLObject).id);
                        }
                        chatActivity.presentFragment(new ProfileActivity(bundle));
                        TodoItemMenu.this.dismiss(false);
                        return;
                    }
                    if (SharedConfig.messageSeenHintCount > 0 && chatActivity.contentView.getKeyboardHeight() < AndroidUtilities.dp(20.0f)) {
                        chatActivity.messageSeenPrivacyBulletin = BulletinFactory.of(Bulletin.BulletinWindow.make(TodoItemMenu.this.getContext()), TodoItemMenu.this.resourcesProvider).createErrorBulletin(AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.MessageSeenTooltipMessage)));
                        chatActivity.messageSeenPrivacyBulletin.setDuration(4000);
                        chatActivity.messageSeenPrivacyBulletin.show();
                        SharedConfig.updateMessageSeenHintCount(SharedConfig.messageSeenHintCount - 1);
                    }
                    recyclerListViewCreateListView.requestLayout();
                    linearLayout.requestLayout();
                    recyclerListViewCreateListView.getAdapter().notifyDataSetChanged();
                    itemOptionsMakeOptions.openSwipeback(itemOptionsMakeSwipeback);
                }
            };
            itemOptions = itemOptionsMakeOptions;
            todoItemMenu = this;
            messageSeenView.setOnClickListener(onClickListener);
            linearLayout.addView(recyclerListViewCreateListView, LayoutHelper.createLinear(-1, -2));
            itemOptionsMakeSwipeback.addView(linearLayout);
            itemOptions.addView(frameLayout);
            itemOptions.addGap();
        } else {
            i = -1;
            itemOptions = itemOptionsMakeOptions;
            i2 = -2;
            todoItemMenu = this;
            if (z) {
                messageObject = messageObject3;
                itemOptions.addView(new MessagePrivateSeenView(todoItemMenu.getContext(), 0, messageObject, new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setupMessageOptions$9();
                    }
                }, todoItemMenu.resourcesProvider), LayoutHelper.createLinear(-1, 36));
                itemOptions.addGap();
            }
            if (z5) {
                itemOptions.addView(new MessagePrivateSeenView(todoItemMenu.getContext(), 1, messageObject, new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setupMessageOptions$10();
                    }
                }, todoItemMenu.resourcesProvider), LayoutHelper.createLinear(i, 36));
                itemOptions.addGap();
            }
            if (z6) {
                messageObject2 = messageObject;
            } else {
                messageObject2 = messageObject;
                itemOptions.addView(new MessagePrivateSeenView(todoItemMenu.getContext(), 2, messageObject, new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setupMessageOptions$11();
                    }
                }, todoItemMenu.resourcesProvider), LayoutHelper.createLinear(i, 36));
                itemOptions.addGap();
            }
            size = arrayList.size();
            for (i3 = 0; i3 < size; i3++) {
                final int iIntValue = arrayList3.get(i3).intValue();
                itemOptions.add(arrayList.get(i3).intValue(), arrayList2.get(i3), new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setupMessageOptions$12(callback, iIntValue);
                    }
                });
            }
            itemOptions.setGapBackgroundColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, todoItemMenu.resourcesProvider), 0.06f));
            itemOptions.setBlurBackground(todoItemMenu.iBlur3Factory, BlurredBackgroundProviderImpl.scrimMenuBackground(todoItemMenu.resourcesProvider), false);
            itemOptions.setupSelectors();
            ViewGroup layout = itemOptions.getLayout();
            todoItemMenu.messageOptionsView = layout;
            layout.setPivotX(0.0f);
            todoItemMenu.messageOptionsView.setPivotY(0.0f);
            todoItemMenu.menuContainer.addView(todoItemMenu.messageOptionsView, LayoutHelper.createFrame(i2, i2, 51));
            view = todoItemMenu.messageOptionsView;
            if (view instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ((ActionBarPopupWindow.ActionBarPopupWindowLayout) view).setOnSizeChangedListener(new ActionBarPopupWindow.onSizeChangedListener() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.onSizeChangedListener
                    public final void onSizeChanged() {
                        this.f$0.updateTranslation();
                    }
                });
                todoItemMenu.messageOptionsView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return this.f$0.lambda$setupMessageOptions$13(view2, motionEvent);
                    }
                });
            }
            if (z3) {
                final ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout((chatActivity.getUserConfig().getClientUserId() > chatActivity.getDialogId() ? 1 : (chatActivity.getUserConfig().getClientUserId() == chatActivity.getDialogId() ? 0 : -1)) == 0 ? 3 : 0, chatActivity, todoItemMenu.getContext(), chatActivity.getCurrentAccount(), todoItemMenu.resourcesProvider);
                reactionsContainerLayout.forceAttachToParent = true;
                reactionsContainerLayout.setPadding(AndroidUtilities.dp(4.0f) + (LocaleController.isRTL ? 0 : 24), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f) + (LocaleController.isRTL ? 24 : 0), AndroidUtilities.dp(22.0f));
                reactionsContainerLayout.setDelegate(new ReactionsContainerLayout.ReactionsContainerDelegate() { // from class: org.telegram.ui.TodoItemMenu.13
                    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
                    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
                    @Override // org.telegram.ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void onReactionClicked(View view2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z7, boolean z8) {
                        float f;
                        float f2;
                        float f3;
                        int i5;
                        float f4;
                        BaseCell baseCellFindMessageCell = chatActivity.findMessageCell(messageObject2.getId(), true);
                        float f5 = 0.0f;
                        if (baseCellFindMessageCell instanceof ChatMessageCell) {
                            ChatMessageCell chatMessageCell = (ChatMessageCell) baseCellFindMessageCell;
                            ReactionsLayoutInBubble.ReactionButton reactionButton = chatMessageCell.reactionsLayoutInBubble.getReactionButton(visibleReaction);
                            if (reactionButton != null) {
                                f5 = r1.f1156x + reactionButton.f1158x + (reactionButton.width / 2.0f);
                                f3 = chatMessageCell.reactionsLayoutInBubble.f1157y + reactionButton.f1159y;
                                i5 = reactionButton.height;
                            } else {
                                f4 = 0.0f;
                                f2 = f4;
                                f = f5;
                                chatActivity.selectReaction(baseCellFindMessageCell, messageObject2, reactionsContainerLayout, view2, f, f2, visibleReaction, false, (visibleReaction == null || !visibleReaction.isStar) ? z7 : true, z8, false);
                                TodoItemMenu.this.dismiss(false);
                            }
                        } else {
                            if (baseCellFindMessageCell instanceof ChatActionCell) {
                                ChatActionCell chatActionCell = (ChatActionCell) baseCellFindMessageCell;
                                ReactionsLayoutInBubble.ReactionButton reactionButton2 = chatActionCell.reactionsLayoutInBubble.getReactionButton(visibleReaction);
                                if (reactionButton2 != null) {
                                    f5 = r1.f1156x + reactionButton2.f1158x + (reactionButton2.width / 2.0f);
                                    f3 = chatActionCell.reactionsLayoutInBubble.f1157y + reactionButton2.f1159y;
                                    i5 = reactionButton2.height;
                                }
                            }
                            f = 0.0f;
                            f2 = 0.0f;
                            chatActivity.selectReaction(baseCellFindMessageCell, messageObject2, reactionsContainerLayout, view2, f, f2, visibleReaction, false, (visibleReaction == null || !visibleReaction.isStar) ? z7 : true, z8, false);
                            TodoItemMenu.this.dismiss(false);
                        }
                        f4 = f3 + (i5 / 2.0f);
                        f2 = f4;
                        f = f5;
                        chatActivity.selectReaction(baseCellFindMessageCell, messageObject2, reactionsContainerLayout, view2, f, f2, visibleReaction, false, (visibleReaction == null || !visibleReaction.isStar) ? z7 : true, z8, false);
                        TodoItemMenu.this.dismiss(false);
                    }
                });
                FrameLayout frameLayout3 = todoItemMenu.menuContainer;
                todoItemMenu.reactionsView = reactionsContainerLayout;
                frameLayout3.addView(reactionsContainerLayout, LayoutHelper.createFrame(i2, (int) ((reactionsContainerLayout.getTopOffset() / AndroidUtilities.density) + 52.0f + 22.0f), 51));
                reactionsContainerLayout.setMessage(messageObject2, chatActivity.chatInfo, true);
                todoItemMenu.reactionsView.setTransitionProgress(1.0f);
            }
            todoItemMenu.updateTranslation();
        }
        messageObject = messageObject3;
        if (z5) {
        }
        if (z6) {
        }
        size = arrayList.size();
        while (i3 < size) {
        }
        itemOptions.setGapBackgroundColor(Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, todoItemMenu.resourcesProvider), 0.06f));
        itemOptions.setBlurBackground(todoItemMenu.iBlur3Factory, BlurredBackgroundProviderImpl.scrimMenuBackground(todoItemMenu.resourcesProvider), false);
        itemOptions.setupSelectors();
        ViewGroup layout2 = itemOptions.getLayout();
        todoItemMenu.messageOptionsView = layout2;
        layout2.setPivotX(0.0f);
        todoItemMenu.messageOptionsView.setPivotY(0.0f);
        todoItemMenu.menuContainer.addView(todoItemMenu.messageOptionsView, LayoutHelper.createFrame(i2, i2, 51));
        view = todoItemMenu.messageOptionsView;
        if (view instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
        }
        if (z3) {
        }
        todoItemMenu.updateTranslation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupMessageOptions$9() {
        dismiss(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupMessageOptions$10() {
        dismiss(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupMessageOptions$11() {
        dismiss(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupMessageOptions$12(Utilities.Callback callback, int i) {
        callback.run(Integer.valueOf(i));
        boolean z = true;
        if (i != 1 && i != 13) {
            z = false;
        }
        dismiss(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setupMessageOptions$13(View view, MotionEvent motionEvent) {
        if (this.messageOptionsView == null || motionEvent.getAction() != 0) {
            return false;
        }
        Drawable backgroundDrawable = ((ActionBarPopupWindow.ActionBarPopupWindowLayout) this.messageOptionsView).getBackgroundDrawable();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(backgroundDrawable.getBounds());
        rectF.offset(this.messageOptionsView.getX(), this.messageOptionsView.getY());
        if (rectF.contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        dismiss(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupTranslation() {
        if (this.hasTranslation || this.windowView.getWidth() <= 0) {
            return;
        }
        ChatMessageCell chatMessageCell = this.cell;
        if (chatMessageCell != null) {
            int[] iArr = new int[2];
            chatMessageCell.getLocationOnScreen(iArr);
            int i = iArr[0];
            Insets insets = this.insets;
            this.tx = i - insets.left;
            float f = iArr[1] - insets.top;
            this.ty = f;
            if (!this.hasDestTranslation) {
                this.hasDestTranslation = true;
                this.dtx1 = 0.0f;
                this.dty1 = f;
                if (this.messageOptionsView != null) {
                    float height = f + this.cell.getHeight() + this.messageOptionsView.getHeight();
                    int height2 = this.windowView.getHeight();
                    Insets insets2 = this.insets;
                    if (height > ((height2 - insets2.top) - insets2.bottom) - AndroidUtilities.dp(66.0f)) {
                        int height3 = this.windowView.getHeight();
                        Insets insets3 = this.insets;
                        this.dty1 = ((((height3 - insets3.top) - insets3.bottom) - AndroidUtilities.dp(66.0f)) - this.cell.getHeight()) - this.messageOptionsView.getHeight();
                    }
                }
                int todoIndex = this.myTaskCell.getTodoIndex(this.taskId);
                this.myTaskCell.getPollButtonTop(todoIndex);
                float pollButtonBottom = this.myTaskCell.getPollButtonBottom(todoIndex);
                this.dtx2 = 0.0f;
                float f2 = this.ty;
                this.dty2 = f2;
                float f3 = (int) pollButtonBottom;
                float f4 = f2 + f3;
                int height4 = this.windowView.getHeight();
                Insets insets4 = this.insets;
                if (f4 > (((height4 - insets4.top) - insets4.bottom) - AndroidUtilities.dp(78.0f)) - this.hintTextView.getHeight()) {
                    int height5 = this.windowView.getHeight();
                    Insets insets5 = this.insets;
                    this.dty2 = ((((height5 - insets5.top) - insets5.bottom) - AndroidUtilities.dp(78.0f)) - this.hintTextView.getHeight()) - r0;
                }
                if (this.taskOptionsView != null) {
                    float height6 = this.dty2 + f3 + r1.getHeight();
                    int height7 = this.windowView.getHeight();
                    Insets insets6 = this.insets;
                    if (height6 > (((height7 - insets6.top) - insets6.bottom) - AndroidUtilities.dp(78.0f)) - this.hintTextView.getHeight()) {
                        int height8 = this.windowView.getHeight();
                        Insets insets7 = this.insets;
                        this.dty2 = (((((height8 - insets7.top) - insets7.bottom) - AndroidUtilities.dp(78.0f)) - this.hintTextView.getHeight()) - r0) - this.taskOptionsView.getHeight();
                    }
                }
            }
            updateTranslation();
        } else {
            this.ty = 0.0f;
            this.tx = 0.0f;
        }
        this.hasTranslation = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTranslation() {
        float positionAnimated = this.viewPager.getPositionAnimated();
        float fLerp = AndroidUtilities.lerp(0, -this.viewPager.getWidth(), positionAnimated);
        float fLerp2 = AndroidUtilities.lerp(this.viewPager.getWidth(), 0, positionAnimated);
        if (this.hasTranslation) {
            View view = this.messageOptionsView;
            if (view instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) view;
                this.dtx1 = 0.0f;
                float f = this.ty;
                this.dty1 = f;
                if (view != null) {
                    float height = f + this.cell.getHeight() + actionBarPopupWindowLayout.getVisibleHeight();
                    int height2 = this.windowView.getHeight();
                    Insets insets = this.insets;
                    if (height > ((height2 - insets.top) - insets.bottom) - AndroidUtilities.dp(66.0f)) {
                        int height3 = this.windowView.getHeight();
                        Insets insets2 = this.insets;
                        this.dty1 = ((((height3 - insets2.top) - insets2.bottom) - AndroidUtilities.dp(66.0f)) - this.cell.getHeight()) - actionBarPopupWindowLayout.getVisibleHeight();
                    }
                }
            }
        }
        this.myCell.setTranslationX(AndroidUtilities.lerp(this.tx, this.dtx1, this.dismissingWithAlpha ? 1.0f : this.openProgress) + fLerp2);
        this.myCell.setTranslationY(AndroidUtilities.lerp(this.ty, this.dty1, this.dismissingWithAlpha ? 1.0f : this.openProgress));
        View view2 = this.messageOptionsView;
        if (view2 != null) {
            boolean z = this.isOut;
            float f2 = this.dtx1;
            if (z) {
                view2.setTranslationX(((((f2 + fLerp2) + this.myCell.getLeft()) + this.myCell.getPollButtonsLeft()) - AndroidUtilities.dp(8.0f)) - this.messageOptionsView.getLeft());
            } else {
                view2.setTranslationX((((f2 + fLerp2) + (this.myCell.needDrawAvatarOutside() ? AndroidUtilities.dp(48.0f) : 0)) + this.myCell.getLeft()) - this.messageOptionsView.getLeft());
            }
            this.messageOptionsViewMaxWidth = this.menuContainer.getMeasuredWidth() - (this.messageOptionsView.getX() - fLerp2);
            this.messageOptionsView.setTranslationY(((this.myCell.getY() + this.myCell.getHeight()) - this.messageOptionsView.getTop()) - this.menuContainer.getTop());
            this.messageOptionsView.setAlpha(this.openProgress);
            float fLerp3 = AndroidUtilities.lerp(0.75f, 1.0f, this.openProgress);
            this.messageOptionsView.setScaleX(fLerp3);
            this.messageOptionsView.setScaleY(fLerp3);
        }
        this.myTaskCell.setTranslationX(AndroidUtilities.lerp(this.tx, this.dtx2, this.dismissingWithAlpha ? 1.0f : this.openProgress) + fLerp);
        this.myTaskCell.setTranslationY(AndroidUtilities.lerp(this.ty, this.dty2, this.dismissingWithAlpha ? 1.0f : this.openProgress));
        if (this.taskOptionsView != null) {
            int todoIndex = this.myTaskCell.getTodoIndex(this.taskId);
            this.myTaskCell.getPollButtonTop(todoIndex);
            float pollButtonBottom = this.myTaskCell.getPollButtonBottom(todoIndex);
            boolean z2 = this.isOut;
            View view3 = this.taskOptionsView;
            if (z2) {
                view3.setTranslationX(((((this.dtx2 + fLerp) + this.myTaskCell.getLeft()) + this.myTaskCell.getPollButtonsLeft()) - AndroidUtilities.dp(8.0f)) - this.taskOptionsView.getLeft());
            } else {
                view3.setTranslationX((((this.dtx2 + fLerp) + (this.myTaskCell.needDrawAvatarOutside() ? AndroidUtilities.dp(48.0f) : 0)) + this.myTaskCell.getLeft()) - this.taskOptionsView.getLeft());
            }
            this.taskOptionsViewMaxWidth = this.menuContainer.getMeasuredWidth() - (this.taskOptionsView.getX() - fLerp2);
            this.taskOptionsView.setTranslationY(((this.myTaskCell.getY() + ((int) pollButtonBottom)) - this.taskOptionsView.getTop()) - this.menuContainer.getTop());
            this.taskOptionsView.setAlpha(this.openProgress);
            float fLerp4 = AndroidUtilities.lerp(0.75f, 1.0f, this.openProgress);
            this.taskOptionsView.setScaleX(fLerp4);
            this.taskOptionsView.setScaleY(fLerp4);
        }
        if (this.dismissingWithAlpha) {
            this.myCell.setAlpha(this.openProgress);
            this.myTaskCell.setAlpha(this.openProgress);
        }
        if (this.reactionsView != null) {
            float fMax = fLerp2 + Math.max(0.0f, ((this.myCell.getBoundsRight() + this.myCell.getBoundsLeft()) / 2.0f) - (this.reactionsView.getWidth() * 0.8f));
            this.reactionsView.setTranslationX(fMax);
            this.reactionsView.setTranslationY(Math.max(0.0f, ((this.myCell.getY() - this.reactionsView.getHeight()) + AndroidUtilities.dp(22.0f)) - this.menuContainer.getTop()));
            this.reactionsView.setAlpha(this.openProgress);
            View windowView = this.reactionsView.getWindowView();
            if (windowView != null) {
                windowView.setTranslationX(fMax);
                windowView.setAlpha(this.openProgress);
            }
        }
        this.hintTextView.setTranslationX(fLerp);
        this.hintTextView.setAlpha(this.openProgress);
        this.tabsView.setSelectedTab(positionAnimated);
        this.tabsView.setAlpha(this.openProgress);
    }

    private void prepareBlur(final View view) {
        if (view != null) {
            view.setVisibility(4);
        }
        ScrimOptions.makeGlobalBlurBitmaps(new Utilities.Callback2() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$prepareBlur$14(view, (Bitmap) obj, (Bitmap) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareBlur$14(View view, Bitmap bitmap, Bitmap bitmap2) {
        if (view != null) {
            view.setVisibility(0);
        }
        this.blurBitmap = bitmap;
        Paint paint = new Paint(1);
        this.blurBitmapPaint = paint;
        Bitmap bitmap3 = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap3, tileMode, tileMode);
        this.blurBitmapShader = bitmapShader;
        paint.setShader(bitmapShader);
        ColorMatrix colorMatrix = new ColorMatrix();
        AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? 0.05f : 0.25f);
        AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? -0.02f : -0.04f);
        this.blurBitmapPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        this.blurMatrix = new Matrix();
        this.iBlur3SourceBitmap.setBitmap(bitmap2);
        checkBitmapMatrix();
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            super.show();
            prepareBlur(null);
            this.setTaskInvisible = true;
            this.open = true;
            animateOpenTo(true, null);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        dismiss(true);
    }

    public void dismiss(boolean z) {
        ChatMessageCell chatMessageCell;
        ReactionsContainerLayout reactionsContainerLayout;
        if (z && (reactionsContainerLayout = this.reactionsView) != null && reactionsContainerLayout.getReactionsWindow() != null && this.reactionsView.getReactionsWindow().isShowing()) {
            this.reactionsView.dismissWindow();
            return;
        }
        if (this.dismissing) {
            return;
        }
        this.dismissing = true;
        this.hasTranslation = false;
        this.viewPager.cancelTouches();
        final boolean z2 = this.viewPager.getCurrentPosition() == 1;
        if (z && z2) {
            ChatMessageCell chatMessageCell2 = this.cell;
            if (chatMessageCell2 != null) {
                chatMessageCell2.setVisibility(4);
                this.cell.invalidate();
            }
        } else if (!z && (chatMessageCell = this.cell) != null) {
            chatMessageCell.setVisibility(0);
            ChatMessageCell chatMessageCell3 = this.cell;
            chatMessageCell3.doNotDrawTaskId = -1;
            chatMessageCell3.invalidate();
        }
        this.dismissingWithAlpha = !z;
        setupTranslation();
        this.open = false;
        animateOpenTo(false, new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$16(z2);
            }
        });
        this.windowView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$15() {
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$16(boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$dismiss$15();
            }
        });
        ChatMessageCell chatMessageCell = this.cell;
        if (chatMessageCell != null) {
            chatMessageCell.setVisibility(0);
            if (!z) {
                ChatMessageCell chatMessageCell2 = this.cell;
                chatMessageCell2.syncTodoCheck(chatMessageCell2.getTodoIndex(this.taskId), this.myTaskCell);
            }
            ChatMessageCell chatMessageCell3 = this.cell;
            chatMessageCell3.doNotDrawTaskId = -1;
            chatMessageCell3.invalidate();
        }
        Runnable runnable = this.dismissListener;
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
            this.dismissListener = null;
        }
    }

    public void setOnDismissListener(Runnable runnable) {
        this.dismissListener = runnable;
    }

    private void animateOpenTo(final boolean z, final Runnable runnable) {
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.open2Animator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        setupTranslation();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, z ? 1.0f : 0.0f);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                this.f$0.lambda$animateOpenTo$17(valueAnimator3);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TodoItemMenu.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TodoItemMenu.this.openProgress = z ? 1.0f : 0.0f;
                TodoItemMenu.this.windowView.invalidate();
                TodoItemMenu.this.containerView.invalidate();
                TodoItemMenu.this.updateTranslation();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        long j = !z ? 330L : 520L;
        ValueAnimator valueAnimator3 = this.openAnimator;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        valueAnimator3.setInterpolator(cubicBezierInterpolator);
        this.openAnimator.setDuration(j);
        this.openAnimator.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.openProgress2, z ? 1.0f : 0.0f);
        this.open2Animator = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TodoItemMenu$$ExternalSyntheticLambda16
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                this.f$0.lambda$animateOpenTo$18(valueAnimator4);
            }
        });
        this.open2Animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TodoItemMenu.15
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TodoItemMenu.this.openProgress2 = z ? 1.0f : 0.0f;
            }
        });
        this.open2Animator.setDuration((long) (j * 1.5f));
        this.open2Animator.setInterpolator(cubicBezierInterpolator);
        this.open2Animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$17(ValueAnimator valueAnimator) {
        this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.windowView.invalidate();
        this.containerView.invalidate();
        updateTranslation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$18(ValueAnimator valueAnimator) {
        this.openProgress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }
}
