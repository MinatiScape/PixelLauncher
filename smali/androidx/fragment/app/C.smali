.class public Landroidx/fragment/app/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/a;


# instance fields
.field public final synthetic a:Ld/h;

.field public final synthetic b:Landroidx/fragment/app/J;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/J;Ld/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/C;->b:Landroidx/fragment/app/J;

    iput-object p2, p0, Landroidx/fragment/app/C;->a:Ld/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)Ld/h;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/C;->a:Ld/h;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/C;->a(Ljava/lang/Void;)Ld/h;

    move-result-object p0

    return-object p0
.end method
