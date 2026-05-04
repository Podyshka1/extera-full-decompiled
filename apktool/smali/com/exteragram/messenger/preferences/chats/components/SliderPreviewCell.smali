.class public Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/preferences/components/CustomPreferenceCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;
    }
.end annotation


# instance fields
.field private final cellId:I

.field private lastWidth:I

.field private listener:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;

.field private final messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

.field public final seekBar:Lcom/exteragram/messenger/preferences/components/AltSeekbar;


# direct methods
.method public static synthetic $r8$lambda$ASsv_R1ynh012zWUYbci3KAxqjI(Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->lambda$new$0(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/content/Context;IIIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 58
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput p3, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->cellId:I

    .line 60
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p3, 0x0

    .line 61
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 63
    new-instance v0, Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    new-instance v2, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;)V

    move-object v1, p2

    move v3, p4

    move v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/preferences/components/AltSeekbar;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/preferences/components/AltSeekbar$OnDrag;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->seekBar:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    const/high16 p3, -0x40000000    # -2.0f

    const/4 v2, -0x1

    .line 69
    invoke-static {v2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p10, :cond_0

    .line 72
    new-instance p3, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    const/4 v3, 0x1

    invoke-direct {p3, p2, p1, v3}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    iput-object p3, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p3, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    invoke-direct {p3, p2, p1}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    iput-object p3, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    .line 77
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 78
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->newSliderStyle:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x42f00000    # 120.0f

    :goto_1
    move v7, p2

    goto :goto_2

    :cond_1
    const/high16 p2, 0x42e00000    # 112.0f

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 p1, p6

    .line 80
    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/preferences/components/AltSeekbar;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$new$0(F)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->listener:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;->onChanged(F)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;

    .line 113
    iget v1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->cellId:I

    iget v3, p1, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->cellId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    iget-object v3, p1, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    .line 114
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->seekBar:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    iget-object v3, p1, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->seekBar:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    .line 115
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->lastWidth:I

    iget p1, p1, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->lastWidth:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getListener()Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->listener:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->lastWidth:I

    .line 105
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->messagesCell:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;->invalidate()V

    .line 106
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->seekBar:Lcom/exteragram/messenger/preferences/components/AltSeekbar;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 96
    iget p2, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->lastWidth:I

    if-eq p2, p1, :cond_0

    .line 97
    iput p1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->lastWidth:I

    :cond_0
    return-void
.end method

.method public setListener(Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;)Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;->listener:Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell$OnSliderChangedListener;

    return-object p0
.end method
