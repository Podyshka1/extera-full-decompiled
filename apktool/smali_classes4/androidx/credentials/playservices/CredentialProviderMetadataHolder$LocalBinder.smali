.class public final Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/CredentialProviderMetadataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/CredentialProviderMetadataHolder;


# direct methods
.method public constructor <init>(Landroidx/credentials/playservices/CredentialProviderMetadataHolder;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderMetadataHolder$LocalBinder;->this$0:Landroidx/credentials/playservices/CredentialProviderMetadataHolder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
