.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/Runnable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/Integer;

.field public final synthetic f$8:I

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/tgnet/TLRPC$Chat;IILjava/lang/Runnable;Ljava/lang/String;Ljava/lang/Integer;ILjava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iput p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$3:I

    iput p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$4:I

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$5:Ljava/lang/Runnable;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$7:Ljava/lang/Integer;

    iput p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$8:I

    iput-object p10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$9:Ljava/util/ArrayList;

    iput p11, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$10:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$3:I

    iget v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$4:I

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$5:Ljava/lang/Runnable;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$7:Ljava/lang/Integer;

    iget v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$8:I

    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$9:Ljava/util/ArrayList;

    iget v10, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda167;->f$10:I

    move-object v11, p1

    move-object v12, p2

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$_GU9iemfCSy-QuEPNx_-paT6TsE(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/tgnet/TLRPC$Chat;IILjava/lang/Runnable;Ljava/lang/String;Ljava/lang/Integer;ILjava/util/ArrayList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
