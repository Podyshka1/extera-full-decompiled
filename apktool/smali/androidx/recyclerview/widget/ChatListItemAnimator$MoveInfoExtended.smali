.class Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;
.super Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ChatListItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInfoExtended"
.end annotation


# instance fields
.field public animateBackgroundOnly:Z

.field public animateChangeGroupBackground:Z

.field public animateChangeInternal:Z

.field animateImage:Z

.field public animatePinnedBottom:Z

.field animateRemoveGroup:Z

.field deltaBottom:I

.field deltaLeft:I

.field deltaRight:I

.field deltaTop:I

.field public groupOffsetBottom:I

.field public groupOffsetLeft:I

.field public groupOffsetRight:I

.field public groupOffsetTop:I

.field imageHeight:F

.field imageWidth:F

.field imageX:F

.field imageY:F

.field final synthetic this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 1703
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-object p1, p0

    .line 1704
    invoke-direct/range {p1 .. p6}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
