.class public final Lcom/vungle/publisher/ajm;
.super Lcom/vungle/publisher/ahs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ajm$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/vungle/publisher/ajm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vungle/publisher/ajm;

    invoke-direct {v0}, Lcom/vungle/publisher/ajm;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajm;->b:Lcom/vungle/publisher/ajm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vungle/publisher/ahs;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/ahs$a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/vungle/publisher/ajm$a;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/ajm$a;-><init>(Lcom/vungle/publisher/ajm;)V

    return-object v0
.end method
