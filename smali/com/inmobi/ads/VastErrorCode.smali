.class public final enum Lcom/inmobi/ads/VastErrorCode;
.super Ljava/lang/Enum;
.source "VastErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/VastErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/VastErrorCode;

.field public static final enum COMPANION_RESOURCE_NOT_ACCESSIBLE:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum GENERAL_COMPANION_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum GENERAL_LINEAR_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum GENERAL_WRAPPER_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum LINEAR_MEDIA_FILE_NOT_FOUND:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum MEDIA_FILE_TIMEOUT:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum MEDIA_PLAY_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum MISSING_SUPPORTED_TYPE_COMPANION:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum NO_BEST_FIT_COMPANION:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum NO_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum NO_SUPPORTED_MEDIA:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum UNDEFINED_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum UNSUPPORTED_AD_TYPE:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum VAST_URI_NETWORK_ERROR:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum WRAPPER_MAX_LIMIT_EXCEEDED:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum WRAPPER_NO_AD:Lcom/inmobi/ads/VastErrorCode;

.field public static final enum XML_PARSING_ERROR:Lcom/inmobi/ads/VastErrorCode;


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "NO_ERROR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->NO_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 9
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "XML_PARSING_ERROR"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->XML_PARSING_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 10
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "SCHEMA_VALIDATION_ERROR"

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 11
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "UNSUPPORTED_AD_TYPE"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->UNSUPPORTED_AD_TYPE:Lcom/inmobi/ads/VastErrorCode;

    .line 12
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "GENERAL_WRAPPER_ERROR"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->GENERAL_WRAPPER_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 13
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "VAST_URI_NETWORK_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0x12d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->VAST_URI_NETWORK_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 14
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "WRAPPER_MAX_LIMIT_EXCEEDED"

    const/4 v2, 0x6

    const/16 v3, 0x12e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_MAX_LIMIT_EXCEEDED:Lcom/inmobi/ads/VastErrorCode;

    .line 15
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "WRAPPER_NO_AD"

    const/4 v2, 0x7

    const/16 v3, 0x12f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_NO_AD:Lcom/inmobi/ads/VastErrorCode;

    .line 16
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "GENERAL_LINEAR_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->GENERAL_LINEAR_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 17
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "LINEAR_MEDIA_FILE_NOT_FOUND"

    const/16 v2, 0x9

    const/16 v3, 0x191

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->LINEAR_MEDIA_FILE_NOT_FOUND:Lcom/inmobi/ads/VastErrorCode;

    .line 18
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "MEDIA_FILE_TIMEOUT"

    const/16 v2, 0xa

    const/16 v3, 0x192

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->MEDIA_FILE_TIMEOUT:Lcom/inmobi/ads/VastErrorCode;

    .line 19
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "NO_SUPPORTED_MEDIA"

    const/16 v2, 0xb

    const/16 v3, 0x193

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->NO_SUPPORTED_MEDIA:Lcom/inmobi/ads/VastErrorCode;

    .line 20
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "MEDIA_PLAY_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0x195

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->MEDIA_PLAY_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 21
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "GENERAL_COMPANION_ERROR"

    const/16 v2, 0xd

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->GENERAL_COMPANION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 22
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "NO_BEST_FIT_COMPANION"

    const/16 v2, 0xe

    const/16 v3, 0x259

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->NO_BEST_FIT_COMPANION:Lcom/inmobi/ads/VastErrorCode;

    .line 23
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "COMPANION_RESOURCE_NOT_ACCESSIBLE"

    const/16 v2, 0xf

    const/16 v3, 0x25b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->COMPANION_RESOURCE_NOT_ACCESSIBLE:Lcom/inmobi/ads/VastErrorCode;

    .line 24
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "MISSING_SUPPORTED_TYPE_COMPANION"

    const/16 v2, 0x10

    const/16 v3, 0x25c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->MISSING_SUPPORTED_TYPE_COMPANION:Lcom/inmobi/ads/VastErrorCode;

    .line 25
    new-instance v0, Lcom/inmobi/ads/VastErrorCode;

    const-string v1, "UNDEFINED_ERROR"

    const/16 v2, 0x11

    const/16 v3, 0x384

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/VastErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->UNDEFINED_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 6
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/inmobi/ads/VastErrorCode;

    sget-object v1, Lcom/inmobi/ads/VastErrorCode;->NO_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/VastErrorCode;->XML_PARSING_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/VastErrorCode;->UNSUPPORTED_AD_TYPE:Lcom/inmobi/ads/VastErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/ads/VastErrorCode;->GENERAL_WRAPPER_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->VAST_URI_NETWORK_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_MAX_LIMIT_EXCEEDED:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_NO_AD:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->GENERAL_LINEAR_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->LINEAR_MEDIA_FILE_NOT_FOUND:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->MEDIA_FILE_TIMEOUT:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->NO_SUPPORTED_MEDIA:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->MEDIA_PLAY_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->GENERAL_COMPANION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->NO_BEST_FIT_COMPANION:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->COMPANION_RESOURCE_NOT_ACCESSIBLE:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->MISSING_SUPPORTED_TYPE_COMPANION:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/inmobi/ads/VastErrorCode;->UNDEFINED_ERROR:Lcom/inmobi/ads/VastErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/VastErrorCode;->$VALUES:[Lcom/inmobi/ads/VastErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/inmobi/ads/VastErrorCode;->a:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/VastErrorCode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/inmobi/ads/VastErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/VastErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/VastErrorCode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->$VALUES:[Lcom/inmobi/ads/VastErrorCode;

    invoke-virtual {v0}, [Lcom/inmobi/ads/VastErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/VastErrorCode;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/VastErrorCode;->a:Ljava/lang/Integer;

    return-object v0
.end method
