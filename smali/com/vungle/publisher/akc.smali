.class public final Lcom/vungle/publisher/akc;
.super Lcom/vungle/publisher/ahp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/akc$d;,
        Lcom/vungle/publisher/akc$c;,
        Lcom/vungle/publisher/akc$b;,
        Lcom/vungle/publisher/akc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahp",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/vungle/publisher/akc;->c:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/vungle/publisher/akc$a;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/akc$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ahp;-><init>(Lcom/vungle/publisher/ahp$a;)V

    .line 77
    iput-object p1, p0, Lcom/vungle/publisher/akc;->b:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static a(Lcom/vungle/publisher/ahu;Ljava/lang/Object;)Lcom/vungle/publisher/ahr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;TT;)",
            "Lcom/vungle/publisher/ahr;"
        }
    .end annotation

    .prologue
    .line 59
    sget-boolean v0, Lcom/vungle/publisher/akc;->c:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/vungle/publisher/ajh;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/ajh;-><init>(Lcom/vungle/publisher/ahu;Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vungle/publisher/akc$d;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/akc$d;-><init>(Lcom/vungle/publisher/ahu;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/vungle/publisher/akc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/vungle/publisher/akc;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/akc;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahs;",
            ")",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    instance-of v0, p1, Lcom/vungle/publisher/ajj;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/vungle/publisher/ajj;

    .line 99
    new-instance v0, Lcom/vungle/publisher/akc$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/akc$1;-><init>(Lcom/vungle/publisher/akc;Lcom/vungle/publisher/ajj;)V

    .line 125
    :goto_0
    new-instance v1, Lcom/vungle/publisher/akc$b;

    iget-object v2, p0, Lcom/vungle/publisher/akc;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/akc$b;-><init>(Ljava/lang/Object;Lcom/vungle/publisher/aii;)V

    invoke-static {v1}, Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lcom/vungle/publisher/akc$2;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/akc$2;-><init>(Lcom/vungle/publisher/akc;Lcom/vungle/publisher/ahs;)V

    goto :goto_0
.end method

.method public final d(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/aii",
            "<-TT;+",
            "Lcom/vungle/publisher/ahp",
            "<+TR;>;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/vungle/publisher/akc$3;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/akc$3;-><init>(Lcom/vungle/publisher/akc;Lcom/vungle/publisher/aii;)V

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
