.class public abstract Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectAnimatedEmojiDialogWindow"
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public static synthetic $r8$lambda$Stx6nzxgBbMEwlNK__veO9gJNrk(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->lambda$dismiss$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XHVKtgZK_Vi5QBfbkh5XA8tNoGA()V
    .locals 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 277
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 v0, 0x0

    .line 284
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "mOnScrollChangedListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :catch_0
    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->superListenerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 299
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->init()V

    return-void
.end method

.method private dismissDim()V
    .locals 5

    .line 356
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 360
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 365
    :try_start_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    and-int/lit8 v3, v3, -0x3

    .line 366
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x0

    .line 367
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 368
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 305
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 306
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 307
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v0, 0x4

    .line 308
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 309
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->superListenerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 312
    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$1()V
    .locals 0

    .line 401
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private registerListener(Landroid/view/View;)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 334
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eq p1, v0, :cond_3

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 338
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_3

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public dimBehind()V
    .locals 4

    .line 346
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 348
    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 350
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x3e4ccccd    # 0.2f

    .line 351
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 352
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 400
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onDismiss(Ljava/lang/Runnable;)V

    .line 402
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismissDim()V

    return-void

    .line 404
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 0

    .line 376
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 377
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 383
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 389
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 395
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->unregisterListener()V

    return-void
.end method
