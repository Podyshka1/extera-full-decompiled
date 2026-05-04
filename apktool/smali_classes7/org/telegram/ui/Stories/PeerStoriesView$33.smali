.class Lorg/telegram/ui/Stories/PeerStoriesView$33;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V
    .locals 0

    .line 5647
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 0

    .line 5650
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
