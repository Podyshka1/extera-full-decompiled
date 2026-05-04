.class public final synthetic Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SessionsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_authorization;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/SessionsActivity;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/SessionsActivity;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/SessionsActivity;->$r8$lambda$9Z9xyPPpLY29RzW8elz5G93g5f0(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_authorization;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
