.class public Lorg/telegram/ui/PhotoAlbumPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    }
.end annotation


# static fields
.field public static SELECT_TYPE_ALL:I = 0x0

.field public static SELECT_TYPE_AVATAR:I = 0x1

.field public static SELECT_TYPE_AVATAR_VIDEO:I = 0x3

.field public static SELECT_TYPE_QR:I = 0xa

.field public static SELECT_TYPE_WALLPAPER:I = 0x2


# instance fields
.field private albumsSorted:Ljava/util/ArrayList;

.field private allowCaption:Z

.field private allowGifs:Z

.field private allowOrder:Z

.field private allowSearchImages:Z

.field private caption:Ljava/lang/CharSequence;

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private columnsCount:I

.field private commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

.field private emptyView:Landroid/widget/TextView;

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private maxSelectedPhotos:I

.field private paint:Landroid/graphics/Paint;

.field private progressView:Landroid/widget/FrameLayout;

.field private rect:Landroid/graphics/RectF;

.field private selectPhotoType:I

.field private selectedCountView:Landroid/view/View;

.field private selectedPhotos:Ljava/util/HashMap;

.field private selectedPhotosOrder:Ljava/util/ArrayList;

.field private sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private sendPressed:Z

.field private shadow:Landroid/view/View;

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private textPaint:Landroid/text/TextPaint;

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonContainer:Landroid/widget/FrameLayout;

.field private writeButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$0JRSwOJgGO2mFYCdEWEAfKrxwAc(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0VZbYeGjzCfTycUF10rT-CkWue0(Lorg/telegram/ui/PhotoAlbumPickerActivity;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->lambda$createView$2(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$4MoU0zFzx1jCCJMBFAoZICFPUz4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 344
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Cil1Z18pQmLTxgYO4FwTNA-BMvI(Lorg/telegram/ui/PhotoAlbumPickerActivity;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->lambda$createView$5(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZz6451RuRRNMrM7rW-GGWTCB5g(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 364
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$_O7n6T57nfx6Cz8DQlnPkFEbnwE(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->lambda$createView$7(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hiknwGQUebY93d-e57F909oDH_s(Lorg/telegram/ui/PhotoAlbumPickerActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->lambda$createView$6(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$psoTvnREqI045CghvvLDymNNnTo(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->lambda$createView$4(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetalbumsSorted(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolumnsCount(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommentTextView(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaint(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPhotos(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPhotosOrder(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextPaint(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/text/TextPaint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcaption(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->caption:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixLayoutInternal(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayoutInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPhotoPicker(Lorg/telegram/ui/PhotoAlbumPickerActivity;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSelectedPhotos(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePhotosButton(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->updatePhotosButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZZLorg/telegram/ui/ChatActivity;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    const/4 v0, 0x2

    .line 92
    iput v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowSearchImages:Z

    .line 104
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowOrder:Z

    .line 118
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->textPaint:Landroid/text/TextPaint;

    .line 119
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->rect:Landroid/graphics/RectF;

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->paint:Landroid/graphics/Paint;

    .line 132
    iput-object p4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 133
    iput p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    .line 134
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    .line 135
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    return-void
.end method

.method private fixLayout()V
    .locals 2

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 693
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private fixLayoutInternal()V
    .locals 2

    .line 722
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 726
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 727
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    .line 728
    iput v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 729
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 730
    iput v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 732
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$createView$2(ZII)V
    .locals 1

    .line 422
    iget-object p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    .line 423
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 3

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 426
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    .line 427
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/KeyEvent;)V
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(ZII)V
    .locals 1

    .line 489
    iget-object p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-direct {p0, p3, v0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    .line 490
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$6(ILandroid/view/View;)V
    .locals 2

    .line 484
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 485
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    .line 488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance p2, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-static {p1, v0, v1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 493
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V

    .line 494
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)Z
    .locals 10

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->maxSelectedPhotos:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_5

    .line 434
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 437
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v4, 0x2

    if-nez v2, :cond_9

    .line 438
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 439
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 440
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 462
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 464
    new-array v2, v4, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iput-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_8

    if-nez v2, :cond_1

    .line 466
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 470
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v2, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    if-ne v2, v3, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    invoke-direct {v6, v7, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    aput-object v6, v5, v2

    if-nez v2, :cond_6

    .line 472
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 473
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    sget v6, Lorg/telegram/messenger/R$string;->SetReminder:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 475
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    sget v6, Lorg/telegram/messenger/R$string;->ScheduleMessage:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 478
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    sget v6, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 480
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    const/high16 v6, 0x43440000    # 196.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 482
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v6, v6, v2

    const/4 v7, -0x1

    const/16 v8, 0x30

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 483
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v5, v5, v2

    new-instance v6, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 498
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    .line 500
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, -0x2

    invoke-direct {v0, v2, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 501
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 510
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/view/View;->measure(II)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 512
    new-array v0, v4, [I

    .line 513
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 514
    iget-object v2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    aget v5, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v3, 0x33

    invoke-virtual {v2, p1, v3, v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v0, 0x3

    .line 517
    :try_start_0
    invoke-virtual {p1, v0, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_5
    return v1
.end method

.method private openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 10

    if-eqz p1, :cond_0

    .line 777
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    iget-object v7, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v8, 0x0

    move-object v2, p1

    move v1, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    .line 778
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->setCaption(Ljava/lang/CharSequence;)V

    .line 779
    new-instance p1, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$8;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 798
    iget p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->maxSelectedPhotos:I

    iget-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowOrder:Z

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 799
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_0
    move-object v2, p1

    .line 801
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 802
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 803
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    if-eqz p1, :cond_1

    .line 804
    new-instance v0, Lorg/telegram/ui/PhotoPickerSearchActivity;

    iget v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    move-object v2, v5

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;)V

    move-object v5, v2

    .line 805
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setCaption(Ljava/lang/CharSequence;)V

    .line 806
    new-instance p1, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;

    invoke-direct {p1, p0, v1, v5}, Lorg/telegram/ui/PhotoAlbumPickerActivity$9;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 825
    iget p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->maxSelectedPhotos:I

    iget-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowOrder:Z

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setMaxSelectedPhotos(IZ)V

    .line 826
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_1
    move-object v4, v1

    .line 828
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity;

    iget v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    iget-boolean v7, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    iget-object v8, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v9, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    move-object p1, v1

    move-object v1, v4

    move-object v2, v5

    .line 829
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->setCaption(Ljava/lang/CharSequence;)V

    .line 830
    new-instance p2, Lorg/telegram/ui/PhotoAlbumPickerActivity$10;

    invoke-direct {p2, p0, v1, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$10;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 849
    iget p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->maxSelectedPhotos:I

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowOrder:Z

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 850
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZI)V
    .locals 8

    .line 639
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    .line 644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 645
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 646
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 647
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v4}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 648
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    instance-of v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 650
    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 651
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 652
    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_1

    .line 654
    :cond_1
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 656
    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 657
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    .line 658
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 659
    iget-boolean v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 660
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    iput-object v6, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 661
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 662
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 663
    iget v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v3, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    goto :goto_3

    .line 664
    :cond_3
    instance-of v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v5, :cond_7

    .line 665
    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 666
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 667
    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_2

    .line 669
    :cond_4
    iput-object v3, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    .line 671
    :goto_2
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 672
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->coverPath:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->coverPath:Ljava/lang/String;

    .line 673
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 674
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    iput-object v6, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 675
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 676
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 677
    iget v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 678
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v5, :cond_6

    iget v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-ne v6, v0, :cond_6

    .line 679
    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 680
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->params:Ljava/util/HashMap;

    iput-object v5, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->params:Ljava/util/HashMap;

    .line 683
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 687
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    invoke-interface {p1, v1, p3, p4}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;ZI)V

    :cond_9
    :goto_4
    return-void
.end method

.method private showCommentTextView(Z)Z
    .locals 6

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    return v1

    .line 739
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 743
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_4

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 748
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    move v5, v3

    goto :goto_5

    :cond_7
    move v5, v4

    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_8

    move v5, v3

    goto :goto_6

    :cond_8
    move v5, v1

    :goto_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_9

    move v1, v3

    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    move v3, v4

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/high16 v1, 0x42400000    # 48.0f

    if-eqz p1, :cond_b

    move v3, v4

    goto :goto_8

    :cond_b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->shadow:Landroid/view/View;

    if-eqz p1, :cond_c

    goto :goto_9

    :cond_c
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v4, p1

    :goto_9
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    return v2
.end method

.method private updatePhotosButton()V
    .locals 2

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x0

    .line 768
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->showCommentTextView(Z)Z

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    .line 771
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->showCommentTextView(Z)Z

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 164
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 165
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 166
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 167
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 168
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 169
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 186
    iget-boolean v4, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowSearchImages:Z

    const/4 v8, 0x2

    if-eqz v4, :cond_0

    .line 187
    sget v4, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 190
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v5, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 193
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 321
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Gallery:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x40c00000    # 6.0f

    .line 327
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v10, 0x42580000    # 54.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v1, v5, v6, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 328
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 329
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 330
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 331
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v2, v9, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 332
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 333
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x33

    const/4 v6, -0x1

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 335
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 337
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const v4, -0x7f7f80

    .line 338
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 341
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoPhotos:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v16, 0x0

    const/high16 v17, 0x42400000    # 48.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    .line 347
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v11, -0x1

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    const v5, -0xad825d

    .line 351
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 352
    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/4 v11, -0x2

    invoke-static {v11, v11, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->shadow:Landroid/view/View;

    .line 355
    sget v4, Lorg/telegram/messenger/R$drawable;->header_shadow_reverse:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 356
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->shadow:Landroid/view/View;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 357
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->shadow:Landroid/view/View;

    const/4 v11, -0x1

    const/high16 v12, 0x40400000    # 3.0f

    const/16 v13, 0x53

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    .line 360
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 361
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 363
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 369
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v3, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 371
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->maxCaptionLength:I

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v3, v9, [Landroid/text/InputFilter;

    aput-object v1, v3, v7

    .line 372
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 373
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/messenger/R$string;->AddCaption:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    .line 375
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 376
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 377
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v17, 0x42a80000    # 84.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 379
    iget-object v3, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_2
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 392
    invoke-virtual {v1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 394
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 396
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 397
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 398
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x41200000    # 10.0f

    const/16 v11, 0x3c

    const/high16 v12, 0x42700000    # 60.0f

    const/16 v13, 0x55

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    .line 401
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButtonPressed:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/16 v6, 0x38

    invoke-static {v6, v1, v5}, Lcom/exteragram/messenger/utils/ui/UIUtil;->createFabBackground(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 402
    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 405
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 418
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v11, 0x38

    const/high16 v12, 0x42600000    # 56.0f

    const/16 v13, 0x33

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 523
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->textPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 524
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 526
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    .line 547
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 548
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 549
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 550
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedCountView:Landroid/view/View;

    const/high16 v16, -0x40000000    # -2.0f

    const/high16 v17, 0x41100000    # 9.0f

    const/16 v11, 0x2a

    const/high16 v12, 0x41c00000    # 24.0f

    const/16 v13, 0x55

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    sget v2, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_ALL:I

    if-eq v1, v2, :cond_3

    .line 552
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 559
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v1, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 563
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 592
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_5

    const/4 p1, 0x0

    .line 593
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 594
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    if-ne v1, p2, :cond_6

    .line 595
    iget p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    if-eq p2, v1, :cond_1

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    if-eq p2, v1, :cond_1

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_QR:I

    if-eq p2, v1, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowSearchImages:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    aget-object p2, p3, v0

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x2

    .line 596
    aget-object p2, p3, p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 600
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    .line 601
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 603
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    .line 604
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 606
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz p2, :cond_4

    .line 607
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 609
    :cond_4
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    return-void

    .line 611
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_6

    .line 612
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    :cond_6
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    .line 904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 906
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v9, v20

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v9, v3

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v11, v3

    const/4 v12, 0x0

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachEmptyImage:I

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v4, v10, v3

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 622
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 585
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 586
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 140
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectPhotoType:I

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_AVATAR:I

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_WALLPAPER:I

    if-eq v0, v1, :cond_1

    sget v1, Lorg/telegram/ui/PhotoAlbumPickerActivity;->SELECT_TYPE_QR:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowSearchImages:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 145
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 146
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 147
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 148
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 149
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 157
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 158
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 580
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 568
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 575
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    return-void
.end method

.method public setAllowSearchImages(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowSearchImages:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 0

    .line 626
    iput p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->maxSelectedPhotos:I

    .line 627
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowOrder:Z

    return-void
.end method
