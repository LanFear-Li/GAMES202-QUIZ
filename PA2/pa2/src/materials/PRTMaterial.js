class PRTMaterial extends Material {
    constructor(vertexShader, fragmentShader) {
        super({
            // uPrecomputeL
            'uPrecomputeLR': {type: 'mat3', value: null},
            'uPrecomputeLG': {type: 'mat3', value: null},
            'uPrecomputeLB': {type: 'mat3', value: null},

        }, ['aPrecomputeLT'], vertexShader, fragmentShader, null);
    }
}

async function buildPRTMaterial(vertexPath, fragmentPath) {
    let vertexShader = await getShaderString(vertexPath);
    let fragmentShader = await getShaderString(fragmentPath);

    return new PRTMaterial(vertexShader, fragmentShader);

}