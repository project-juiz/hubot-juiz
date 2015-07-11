chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'bijin-tokei', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/bijin-tokei')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond.args[0][0].toString()).to.equal("/bijin\\s+now$/i")
    expect(@robot.respond.args[1][0].toString()).to.equal("/bijin\\s+now\\s+(.+)$/i")

  it 'registers a hear listener', ->
    expect(@robot.hear.args[0][0].toString()).to.equal("/美人なう$/")
    expect(@robot.hear.args[1][0].toString()).to.equal("/美人なう、(.+)$/")
