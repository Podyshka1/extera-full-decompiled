.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda122;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda122;->f$0:Landroidx/core/util/Consumer;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda122;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda122;->f$0:Landroidx/core/util/Consumer;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda122;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$frfRGDEXg2Way-LJ0IJV5GFaoZo(Landroidx/core/util/Consumer;I)V

    return-void
.end method
