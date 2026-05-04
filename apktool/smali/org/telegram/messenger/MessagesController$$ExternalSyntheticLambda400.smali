.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda400;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda400;->f$0:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda400;->f$0:Landroidx/core/util/Consumer;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$5xJuNO1hxx_FZRcuLBkgSHrGkPY(Landroidx/core/util/Consumer;)V

    return-void
.end method
