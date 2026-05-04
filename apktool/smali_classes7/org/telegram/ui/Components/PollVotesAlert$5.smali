.class Lorg/telegram/ui/Components/PollVotesAlert$5;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;IZ)V
    .locals 0

    .line 832
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$5;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    const/high16 p1, 0x457a0000    # 4000.0f

    .line 835
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method
