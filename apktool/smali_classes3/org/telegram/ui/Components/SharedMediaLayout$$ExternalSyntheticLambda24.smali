.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;->f$2:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;->f$2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$3Bfw7n4V80hSWWejhXMmNW3E1XA(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method
