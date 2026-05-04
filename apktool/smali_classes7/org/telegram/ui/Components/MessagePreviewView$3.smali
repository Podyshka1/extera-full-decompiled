.class Lorg/telegram/ui/Components/MessagePreviewView$3;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;)V
    .locals 0

    .line 1840
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$3;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    .line 1858
    check-cast p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->bind()V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 3

    .line 1853
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$3;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1843
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$3;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$3;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;

    iget p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->id:I

    return p1
.end method
