.class public final synthetic Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SettingsActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/SettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/SettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/SettingsActivity;->$r8$lambda$Zr0Hrql_Ld4CLv0v_STFxwYwPZ8(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
