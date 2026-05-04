.class public Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private awaitingKeyboard:Z

.field public ignoring:Z

.field private keyboardHeight:I

.field private lastKeyboardHeight:I

.field private final listener:Lorg/telegram/messenger/Utilities$Callback;

.field private final onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private realRootView:Landroid/view/View;

.field private final rect:Landroid/graphics/Rect;

.field private final rootView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$1QiSqDzDhauRGkPBsxlv73IRtpQ(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->update()V

    return-void
.end method

.method public static synthetic $r8$lambda$a7DatkGrEBSvb14EsQcu4NtBNgc(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetonGlobalLayoutListener(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonLayoutChangeListener(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrealRootView(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->realRootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 58
    new-instance v1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rootView:Landroid/view/View;

    .line 32
    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->listener:Lorg/telegram/messenger/Utilities$Callback;

    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->realRootView:Landroid/view/View;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 39
    :cond_0
    new-instance p3, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;-><init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;ZLandroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rootView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->realRootView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rootView:Landroid/view/View;

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    .line 71
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->lastKeyboardHeight:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 72
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->lastKeyboardHeight:I

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public awaitKeyboard()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    return-void
.end method

.method public fire()V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    if-eqz v0, :cond_1

    .line 94
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->listener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_2

    .line 102
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    return v0
.end method

.method public ignore(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->update()V

    return-void
.end method

.method public keyboardVisible()Z
    .locals 3

    .line 84
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardHeight:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitingKeyboard:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
