.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$2;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method
