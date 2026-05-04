.class public abstract Lcom/exteragram/messenger/utils/MediaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GEO_TAGS:[Ljava/lang/String;

.field private static final GEO_TAGS_API_24:[Ljava/lang/String;

.field private static final PLATFORM_HEADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 37
    const-string v7, "GPSDateStamp"

    const-string v8, "GPSProcessingMethod"

    const-string v0, "GPSLatitude"

    const-string v1, "GPSLatitudeRef"

    const-string v2, "GPSLongitude"

    const-string v3, "GPSLongitudeRef"

    const-string v4, "GPSAltitude"

    const-string v5, "GPSAltitudeRef"

    const-string v6, "GPSTimeStamp"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/MediaUtils;->GEO_TAGS:[Ljava/lang/String;

    .line 50
    const-string v13, "GPSDestDistance"

    const-string v14, "GPSDestDistanceRef"

    const-string v1, "GPSAreaInformation"

    const-string v2, "GPSDOP"

    const-string v3, "GPSMeasureMode"

    const-string v4, "GPSSpeedRef"

    const-string v5, "GPSSpeed"

    const-string v6, "GPSStatus"

    const-string v7, "GPSDestLatitude"

    const-string v8, "GPSDestLatitudeRef"

    const-string v9, "GPSDestLongitude"

    const-string v10, "GPSDestLongitudeRef"

    const-string v11, "GPSDestBearing"

    const-string v12, "GPSDestBearingRef"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/MediaUtils;->GEO_TAGS_API_24:[Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/utils/MediaUtils;->PLATFORM_HEADERS:Ljava/util/Map;

    .line 129
    const-string v1, "FFD8FFE000104A46494600010101006000600000FFDB0043000403030403030404030405040405060A07060606060D090A080A0F0D10100F0D0F0E1113181411"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Desktop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "FFD8FFE000104A46494600010101004800480000FFE202184943435F50524F46494C4500010100000208"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Web, K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "FFD8FFE000104A46494600010100000100010000FFE202184943435F50524F46494C450001010000020800000000043000006D6E74725247422058595A2007E0"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "FFD8FFE000104A46494600010101004800480000FFE201D84943435F50524F46494C45000101000001C800000000043000006D6E74725247422058595A2007E0"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "FFD8FFE000104A46494600010100000100010000FFE201D84943435F50524F46494C45000101000001C800000000043000006D6E74725247422058595A2007E0"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "FFD8FFE000104A46494600010100000100010000FFDB004300090607080706090807080A0A090B0D160F0D0C0C0D1B14151016201D2222201D1F1F2428342C24"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "iOS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "FFD8FFE000104A46494600010100000100010000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "macOS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "FFD8FFE000104A46494600010101004800480000FFE201DB4943435F50524F46494C45000101000001CB00000000024000006D6E74725247422058595A200000"

    invoke-static {v1}, Lcom/exteragram/messenger/utils/MediaUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .line 113
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x400

    .line 115
    :try_start_2
    new-array v1, v1, [B

    .line 117
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 120
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 113
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 121
    :goto_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 122
    throw p0
.end method

.method private static getApi24GeoTags()Ljava/util/List;
    .locals 1

    .line 109
    sget-object v0, Lcom/exteragram/messenger/utils/MediaUtils;->GEO_TAGS_API_24:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoPlatform(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x40

    .line 141
    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/MediaUtils;->readFileHeader(Ljava/lang/String;I)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 146
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/utils/MediaUtils;->PLATFORM_HEADERS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 149
    array-length v4, p0

    array-length v5, v3

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    .line 151
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 152
    aget-byte v5, p0, v4

    aget-byte v6, v3, v4

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 188
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 189
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static readFileHeader(Ljava/lang/String;I)[B
    .locals 3

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 171
    :cond_0
    new-array p0, p1, [B

    .line 172
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 177
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 172
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static removeGeolocation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 73
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v0, p0}, Lcom/exteragram/messenger/utils/MediaUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/exteragram/messenger/utils/MediaUtils;->GEO_TAGS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 79
    invoke-static {}, Lcom/exteragram/messenger/utils/MediaUtils;->getApi24GeoTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_1
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :catch_0
    :cond_2
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    .line 89
    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 98
    :try_start_1
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v5

    .line 101
    :catch_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    return v1
.end method
