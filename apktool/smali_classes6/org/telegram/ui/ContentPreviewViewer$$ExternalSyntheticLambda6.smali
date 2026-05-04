.class public final synthetic Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/RecyclerListView;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/telegram/ui/ContentPreviewViewer;->$r8$lambda$PzikLvtjZR18wZ7QUF4AN50-g_s(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Object;)V

    return-void
.end method
