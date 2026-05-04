.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda240;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda240;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda240;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda240;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda240;->f$1:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$FhCOrg5WVTr3SScKZA36Jmzhou0(Lorg/telegram/messenger/MessagesController;Landroid/util/SparseArray;)V

    return-void
.end method
