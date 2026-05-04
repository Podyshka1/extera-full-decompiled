.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda111;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda111;->f$0:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda111;->f$0:Lorg/telegram/ui/DialogsActivity;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$eTWdF6Q3PYzOBXwHHcG1-fq-AJQ(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V

    return-void
.end method
