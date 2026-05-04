.class public final synthetic Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/credentials/CredentialManagerCallback;

.field public final synthetic f$1:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;->f$0:Landroidx/credentials/CredentialManagerCallback;

    iput-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;->f$1:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;->f$0:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;->f$1:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;

    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->$r8$lambda$3IC1EYs9Ov-yyEaKpI5mGVp9EFo(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;)V

    return-void
.end method
