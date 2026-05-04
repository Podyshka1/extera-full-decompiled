.class Lorg/telegram/ui/Components/EmojiView$37;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$tabsMinusDy:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 0

    .line 5168
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$37;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput p3, p0, Lorg/telegram/ui/Components/EmojiView$37;->val$tabsMinusDy:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    .line 5181
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p1

    move-object p2, p0

    iget p3, p2, Lorg/telegram/ui/Components/EmojiView$37;->val$tabsMinusDy:I

    add-int/2addr p1, p3

    return p1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 5176
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    return p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
