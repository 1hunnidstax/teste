.class public final Lcom/vungle/publisher/ajc;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ajc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/ahs;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahs;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/vungle/publisher/ajc;->a:Lcom/vungle/publisher/ahs;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/ajc;->b:Z

    .line 62
    if-lez p2, :cond_0

    :goto_0
    iput p2, p0, Lcom/vungle/publisher/ajc;->c:I

    .line 63
    return-void

    .line 62
    :cond_0
    sget p2, Lcom/vungle/publisher/aka;->b:I

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 40
    check-cast p1, Lcom/vungle/publisher/ahu;

    iget-object v0, p0, Lcom/vungle/publisher/ajc;->a:Lcom/vungle/publisher/ahs;

    instance-of v0, v0, Lcom/vungle/publisher/ajm;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/ajc;->a:Lcom/vungle/publisher/ahs;

    instance-of v0, v0, Lcom/vungle/publisher/ajs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/publisher/ajc$a;

    iget-object v1, p0, Lcom/vungle/publisher/ajc;->a:Lcom/vungle/publisher/ahs;

    iget-boolean v2, p0, Lcom/vungle/publisher/ajc;->b:Z

    iget v3, p0, Lcom/vungle/publisher/ajc;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/vungle/publisher/ajc$a;-><init>(Lcom/vungle/publisher/ahs;Lcom/vungle/publisher/ahu;ZI)V

    iget-object v1, v0, Lcom/vungle/publisher/ajc$a;->b:Lcom/vungle/publisher/ahu;

    new-instance v2, Lcom/vungle/publisher/ajc$a$1;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/ajc$a$1;-><init>(Lcom/vungle/publisher/ajc$a;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    iget-object v2, v0, Lcom/vungle/publisher/ajc$a;->c:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    move-object p1, v0

    goto :goto_0
.end method
