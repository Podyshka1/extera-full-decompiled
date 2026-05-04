.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$2:I

    iput p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$4:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$2:I

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$4:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$lNdS7BR9C0JlIjcLwZgkzW9nWeA(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    return-void
.end method
