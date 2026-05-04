.class public Lorg/telegram/ui/Components/VideoPlayer$Quality;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quality"
.end annotation


# instance fields
.field public height:I

.field public original:Z

.field public final uris:Ljava/util/ArrayList;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V
    .locals 2

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    .line 1073
    iget-boolean v1, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    .line 1074
    iget v1, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    .line 1075
    iget v1, p1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    .line 1076
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static filterByCodec(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1118
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1119
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move v3, v0

    .line 1120
    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1121
    iget-object v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1122
    iget-object v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1123
    iget-object v4, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1127
    :cond_2
    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1128
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public static group(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1083
    iget-boolean v5, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->original:Z

    if-eqz v5, :cond_0

    .line 1084
    new-instance v5, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/VideoPlayer$Quality;-><init>(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1089
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    .line 1090
    iget-boolean v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-nez v8, :cond_1

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v9, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    if-ne v8, v9, :cond_1

    iget v8, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    iget v9, v4, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    .line 1096
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    if-nez v5, :cond_3

    .line 1097
    iget-object v5, v7, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1099
    :cond_3
    new-instance v5, Lorg/telegram/ui/Components/VideoPlayer$Quality;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/VideoPlayer$Quality;-><init>(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getDownloadDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 8

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1164
    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1165
    iget-object v0, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    move v0, v3

    .line 1169
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1170
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1171
    iget-wide v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    iget-object v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1172
    iget-wide v4, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    move-object v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 1177
    iget-object v0, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    .line 1179
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;
    .locals 8

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1184
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1185
    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    move v0, v3

    .line 1190
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1191
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    .line 1192
    iget-wide v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    iget-object v6, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/VideoPlayer;->supportsHardwareDecoder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1193
    iget-wide v4, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->size:J

    move-object v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    return-object v1

    .line 1200
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    return-object v0
.end method

.method public p()I
    .locals 3

    .line 1149
    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit16 v1, v0, -0x870

    .line 1150
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x37

    if-ge v1, v2, :cond_0

    const/16 v0, 0x870

    return v0

    :cond_0
    add-int/lit16 v1, v0, -0x5a0

    .line 1151
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_1

    const/16 v0, 0x5a0

    return v0

    :cond_1
    add-int/lit16 v1, v0, -0x438

    .line 1152
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_2

    const/16 v0, 0x438

    return v0

    :cond_2
    add-int/lit16 v1, v0, -0x2d0

    .line 1153
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_3

    const/16 v0, 0x2d0

    return v0

    :cond_3
    add-int/lit16 v1, v0, -0x1e0

    .line 1154
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_4

    const/16 v0, 0x1e0

    return v0

    :cond_4
    add-int/lit16 v1, v0, -0x168

    .line 1155
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_5

    const/16 v0, 0x168

    return v0

    :cond_5
    add-int/lit16 v1, v0, -0xf0

    .line 1156
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_6

    const/16 v0, 0xf0

    return v0

    :cond_6
    add-int/lit16 v1, v0, -0x90

    .line 1157
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_7

    const/16 v0, 0x90

    :cond_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1138
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    const-string v1, ")"

    const-string v2, " ("

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->width:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->height:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1140
    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->QualitySource:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 1141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-wide v4, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->bitrate:D

    double-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->codec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1144
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->p()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "p"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoPlayer$Quality;->original:Z

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->QualitySource:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
