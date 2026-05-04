.class Lorg/telegram/ui/GroupCallActivity$14;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 3933
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$14;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 3936
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$14;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->tabletGridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->getSpanCount(I)I

    move-result p1

    return p1
.end method
