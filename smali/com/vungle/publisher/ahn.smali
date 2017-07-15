.class public final Lcom/vungle/publisher/ahn;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ahn$b;,
        Lcom/vungle/publisher/ahn$a;
    }
.end annotation


# static fields
.field static final a:Lcom/vungle/publisher/ahn;

.field static final b:Lcom/vungle/publisher/ahn;


# instance fields
.field private final c:Lcom/vungle/publisher/ahn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/vungle/publisher/ahn;

    new-instance v1, Lcom/vungle/publisher/ahn$1;

    invoke-direct {v1}, Lcom/vungle/publisher/ahn$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ahn;-><init>(Lcom/vungle/publisher/ahn$a;)V

    sput-object v0, Lcom/vungle/publisher/ahn;->a:Lcom/vungle/publisher/ahn;

    .line 78
    new-instance v0, Lcom/vungle/publisher/ahn;

    new-instance v1, Lcom/vungle/publisher/ahn$2;

    invoke-direct {v1}, Lcom/vungle/publisher/ahn$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ahn;-><init>(Lcom/vungle/publisher/ahn$a;)V

    sput-object v0, Lcom/vungle/publisher/ahn;->b:Lcom/vungle/publisher/ahn;

    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/ahn$a;)V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p1, p0, Lcom/vungle/publisher/ahn;->c:Lcom/vungle/publisher/ahn$a;

    .line 1013
    return-void
.end method
