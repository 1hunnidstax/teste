.class final Lcom/vungle/publisher/alr;
.super Lcom/vungle/publisher/alq;
.source "vungle"


# static fields
.field private static final a:Lcom/vungle/publisher/alr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/vungle/publisher/alr;

    invoke-direct {v0}, Lcom/vungle/publisher/alr;-><init>()V

    sput-object v0, Lcom/vungle/publisher/alr;->a:Lcom/vungle/publisher/alr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vungle/publisher/alq;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lcom/vungle/publisher/alq;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/vungle/publisher/alr;->a:Lcom/vungle/publisher/alr;

    return-object v0
.end method
