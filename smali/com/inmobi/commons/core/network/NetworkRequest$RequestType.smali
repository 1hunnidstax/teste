.class public final enum Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
.super Ljava/lang/Enum;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

.field public static final enum GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

.field public static final enum POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->$VALUES:[Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->$VALUES:[Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    invoke-virtual {v0}, [Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    return-object v0
.end method
