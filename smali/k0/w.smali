.class public Lk0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lk0/B;


# direct methods
.method public constructor <init>(Lk0/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w;->b:Lk0/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/w;->b:Lk0/B;

    invoke-virtual {v0}, Lk0/B;->G()V

    .line 2
    iget-object p0, p0, Lk0/w;->b:Lk0/B;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/B;->P:Z

    return-void
.end method
