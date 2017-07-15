.class final enum Lcom/miniclip/network/JavaSocket$SocketType;
.super Ljava/lang/Enum;
.source "JavaSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/network/JavaSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SocketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miniclip/network/JavaSocket$SocketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miniclip/network/JavaSocket$SocketType;

.field public static final enum TCP:Lcom/miniclip/network/JavaSocket$SocketType;

.field public static final enum TCPSSL:Lcom/miniclip/network/JavaSocket$SocketType;

.field public static final enum UDP:Lcom/miniclip/network/JavaSocket$SocketType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/miniclip/network/JavaSocket$SocketType;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2}, Lcom/miniclip/network/JavaSocket$SocketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->TCP:Lcom/miniclip/network/JavaSocket$SocketType;

    .line 32
    new-instance v0, Lcom/miniclip/network/JavaSocket$SocketType;

    const-string v1, "TCPSSL"

    invoke-direct {v0, v1, v3}, Lcom/miniclip/network/JavaSocket$SocketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->TCPSSL:Lcom/miniclip/network/JavaSocket$SocketType;

    .line 33
    new-instance v0, Lcom/miniclip/network/JavaSocket$SocketType;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v4}, Lcom/miniclip/network/JavaSocket$SocketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->UDP:Lcom/miniclip/network/JavaSocket$SocketType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miniclip/network/JavaSocket$SocketType;

    sget-object v1, Lcom/miniclip/network/JavaSocket$SocketType;->TCP:Lcom/miniclip/network/JavaSocket$SocketType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miniclip/network/JavaSocket$SocketType;->TCPSSL:Lcom/miniclip/network/JavaSocket$SocketType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miniclip/network/JavaSocket$SocketType;->UDP:Lcom/miniclip/network/JavaSocket$SocketType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->$VALUES:[Lcom/miniclip/network/JavaSocket$SocketType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miniclip/network/JavaSocket$SocketType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/miniclip/network/JavaSocket$SocketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miniclip/network/JavaSocket$SocketType;

    return-object v0
.end method

.method public static values()[Lcom/miniclip/network/JavaSocket$SocketType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->$VALUES:[Lcom/miniclip/network/JavaSocket$SocketType;

    invoke-virtual {v0}, [Lcom/miniclip/network/JavaSocket$SocketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miniclip/network/JavaSocket$SocketType;

    return-object v0
.end method
