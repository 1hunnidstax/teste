.class public final Lcom/vungle/publisher/aig;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aig$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/vungle/publisher/aig$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/vungle/publisher/aig$a;

    invoke-direct {v0}, Lcom/vungle/publisher/aig$a;-><init>()V

    sput-object v0, Lcom/vungle/publisher/aig;->a:Lcom/vungle/publisher/aig$a;

    return-void
.end method

.method public static a()Lcom/vungle/publisher/aig$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/vungle/publisher/aig$a",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/vungle/publisher/aig;->a:Lcom/vungle/publisher/aig$a;

    return-object v0
.end method
